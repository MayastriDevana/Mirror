//
//  MultiSkinView.swift
//  Mirror
//
//  Created by User on 03/05/24.
//

import SwiftUI

struct MultiSkinView: View {
    let mirror: MirrorModel
    
    var body: some View {
        VStack{
            Image(mirror.image)
            Text(mirror.name)
                .padding()
                .fontWeight(.light)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    let mirrors: [MirrorModel] = Bundle.main.decode("skin.json")
    return NavigationStack{
        MultiSkinView(mirror: mirrors[3])
    }
}
