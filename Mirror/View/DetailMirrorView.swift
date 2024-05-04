//
//  DetailMirrorView.swift
//  Mirror
//
//  Created by User on 03/05/24.
//

import SwiftUI

struct DetailMirrorView: View {
    let mirrors : MirrorModel
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                Text(mirrors.header)
                    .padding()
                    .font(.headline)
                
                Image(mirrors.imageprod)
                    .padding()
                
                Text(mirrors.fact)
                    .padding(.top, 24)
                    .multilineTextAlignment(.leading)
                
                
                VStack(alignment: .leading) {
                    Text("Caution :")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(mirrors.caution)
                }
                .padding(.top, 12)
                .padding(.vertical)
                
                
                VStack(alignment: .leading) {
                    Text("Note :")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(mirrors.note)
                }
                .padding(.vertical)
                
                ZStack {
                    Image(.coretan2)
                        .resizable()
                        .scaledToFit()
                    Text("Here steps for you!✨")
                        .font(.callout)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                }
                
                StepsView(mirrors: mirrors)
                
                
                
                
            }
            .padding(.horizontal)
            
            ZStack {
                Image(.coretan)
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("Find your beauty store! 💅🏻")
                    .font(.callout)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                
            }
            ExternalWebLinkView(mirrors: mirrors)
            
            GroupBox{
                
                HStack {
                    Image(systemName: "storefront")
                        .foregroundStyle(.blue)
                    
                    Text("Offline Store")
                    
                    Spacer()
                    
                    Image(systemName: "pin")
                        .foregroundStyle(.blue)
                    
                    NavigationLink(destination: StoreView()){
                        Text("Jakarta")
                            .foregroundStyle(.black)
                            
                    }
                }
                
                
                
            }
            
        }
        
    }
}

#Preview {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
    return NavigationStack{
        DetailMirrorView(mirrors: mirrors[3])
    }
}
