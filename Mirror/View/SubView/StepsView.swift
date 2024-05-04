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
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 100, idealHeight: 170, maxHeight: 100)
        }
    }
}

#Preview {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
    return StepsView(mirrors: mirrors[3])
}
