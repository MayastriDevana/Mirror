//
//  NoteView.swift
//  Mirror
//
//  Created by User on 03/05/24.
//

import SwiftUI

struct StepsView: View {
    let mirrors: MirrorModel
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(mirrors.steps, id: \.self){
                    item in Text(item)
                        .foregroundStyle(.white)
                        .opacity(0.8)
                        .font(.headline)
                        .fontWeight(.bold)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 100, idealHeight: 170, maxHeight: 100)
        }
        .groupBoxStyle(ColoredGroupBoxStyle(color: .brown))
        
    }
}

struct ColoredGroupBoxStyle: GroupBoxStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center) {
            configuration.label
            configuration.content
        }
        .padding()
        .background(color)
        .cornerRadius(10)
        .shadow(radius: 6)
        
    }
}

#Preview {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
    return StepsView(mirrors: mirrors[3])
}
