//
//  MirrorView.swift
//  Mirror
//
//  Created by User on 03/05/24.
//

import SwiftUI

struct MirrorView: View {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
   
    @State private var gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State private var gridColumn: Int = 2
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                VStack/*(alignment: .center)*/{
                    
                    ZStack/*(alignment: .top)*/ {
                        Image(.hand)
                            .resizable()
                            .scaledToFill()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        
                        Text("Mirror, mirror on the wall, What kind of skin type did I have?")
                            .padding(.vertical)
                            .padding(.horizontal)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundStyle(.gray)
                                    .opacity(0.5)
                            )
                    }
                    Text("Wash your face with a gentle cleanser and wait 15 - 30 minutes, then choose the icon that matches how your skin looks and feels.")
                        .padding(.top, 36)
                        .padding(.horizontal)
                    
                    HStack{
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 12){
                            ForEach(mirrors) { mirrors in
                                NavigationLink(destination: DescMirrorView(mirror: mirrors)){
                                    MultiSkinView(mirror: mirrors)
                                }
                            
                            }
                        }
                       
                    }
                    .padding(.top, 36)
                }
                .multilineTextAlignment(.center)
                
            }
            .ignoresSafeArea()
        .multilineTextAlignment(.center)
        }
        
        
    }
        
}

#Preview {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
    return NavigationView{
        MirrorView()
    }
}
