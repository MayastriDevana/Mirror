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
            Image(mirror.image)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding(.horizontal)
            
            Text(mirror.description)
                .font(.headline)
                .padding(.top, 36)
                .padding(.vertical)
                .padding(.horizontal)
                .fontWeight(.light)
            
            Text(mirror.question)
                .font(.headline)
                .padding(.top, 36)
                .padding(.horizontal)
                .fontWeight(.light)
            
            HStack{
                Button{
                    
                }label: {
                    Text("Yes")
                }
                
                Button{
                    
                }label: {
                    Text("No")
                }
            }
                
        }
        .padding()
        .navigationTitle(mirror.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
    return NavigationStack{
        DescMirrorView(mirror: mirrors[3])
        
    }
}
