//
//  ExternalWebLinkView.swift
//  Mirror
//
//  Created by User on 03/05/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let mirrors: MirrorModel
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                    .foregroundStyle(.blue)
                
                Text("Sociolla")
                
                Spacer()
                
                Group {
                    let destination = URL(string: mirrors.link)
                    let sociolla = URL(string: mirrors.link)!
                                       
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.blue)
                    Link(mirrors.name, destination: (destination ?? sociolla ))
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    let mirrors : [MirrorModel] = Bundle.main.decode("skin.json")
    return ExternalWebLinkView(mirrors: mirrors[3])
}
