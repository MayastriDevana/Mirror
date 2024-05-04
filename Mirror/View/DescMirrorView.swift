//
//  MirrorView.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import SwiftUI

struct DescMirrorView: View {
    let mirror: MirrorModel
    
    var body: some View {
        ScrollView(showsIndicators: false){
            Text(mirror.name)
                .padding(.top, 36)
            
            Image(mirror.image)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding(.horizontal)
                .padding(.top, 24)
                
            
            Text(mirror.description)
                .font(.headline)
                .padding(.top, 24)
                .padding(.vertical)
                .padding(.horizontal)
                .fontWeight(.light)
            
            Text(mirror.question)
                .font(.headline)
                .padding(.top, 36)
                .padding(.horizontal)
                .fontWeight(.light)
            
            HStack{
                NavigationLink(destination: DetailMirrorView(mirrors: mirror)){
                    Text("Yes ")
                        .fontWeight(.bold)
                        .font(.callout)
                        .padding()
                        .background(Color.lightpink)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .foregroundColor(.white)
                        .padding()
                }
                
                NavigationLink(destination: MirrorView()){
                    Text("No  ")
                        .fontWeight(.bold)
                        .font(.callout)
                        .padding()
                        .background(Color.lightpink)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .foregroundColor(.white)
                        .padding()
                }
                
            }
            
        }
        .padding()
//        .navigationTitle(mirror.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
    return NavigationStack{
        DescMirrorView(mirror: mirrors[3])
        
    }
}
