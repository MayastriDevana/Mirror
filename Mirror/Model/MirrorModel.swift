//
//  Skin.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation

struct MirrorModel: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    let question: String
    let link: String
    let image: String
    let imageprod: String
    let header: String
    let fact: String
    let caution: String
    let note: String
    let steps: [String]
    let time: String
    let exp: String
    
}
