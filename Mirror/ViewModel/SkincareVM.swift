//
//  SkincareVM.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation
import GoogleGenerativeAI

@MainActor
class SkincareVM: ObservableObject {
    private var geminiModel: GenerativeModel?
    @Published var skincareText = ""
    @Published var displaySkincareText = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var skin: [Skin] = []
    @Published var isReady: Bool = false
   
    private var timer: Timer?
    
    init() {
        generateSkincare()
    }
    
    func generateSkincare(){
        Task{
            do{
                guard let apiKey: String = try await RemoteConfigService.shared.fetchConfig(forKey: .apiKey) else {
                    print("API Key not found")
                    return
                }
                self.geminiModel = GenerativeModel(name: "gemini-pro", apiKey: apiKey)
                self.isReady = true
            }catch{
                print("Error configuring GenerativeModel: \(error)")
            }
        }
    }
    
    func Recomendation(skinType: SkinTypes, skinConcern: SkinConcerns) async{
        let skinTypeString = skinType.rawValue
        let skinConcernString = skinConcern.rawValue
        let prompt = "berikan rekomendasi skincare untuk jenis kulit \(skinTypeString) dengan kondisi kulit \(skinConcernString), maksimal 100 kata."
        
        guard let geminiModel = self.geminiModel else {
            print("Generative Model is not configured")
            return
        }
        
        do{
            guard let response = try? await geminiModel.generateContent(prompt) else {
                print("Response is nil")
                return
            }
            
            guard let text = response.text, let data = text.data(using: .utf8) else {
                print("Unable to extract text or convert to data")
                return
            }
            
            let skins = try JSONDecoder().decode([Skin].self, from: data)
            self.skin = skins
        }catch{
            print("Error fetching places: \(error.localizedDescription)")
        }
    }
    
    func startTypewriterEffect() {
        displaySkincareText = ""
        var charIndex = 0
        
        DispatchQueue.main.async{
            self.displaySkincareText = ""
        }
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { [weak self] timer in
            guard let self = self, charIndex < self.skincareText.count else {
                timer.invalidate()
                return
            }
            
            DispatchQueue.main.async {
                let index = self.skincareText.index(self.skincareText.startIndex, offsetBy: charIndex)
                self.displaySkincareText += String(self.skincareText[index])
                charIndex += 1
            }
        }
    }
}
