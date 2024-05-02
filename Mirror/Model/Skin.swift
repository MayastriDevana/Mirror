//
//  Skin.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation

struct Skin: Codable, Identifiable {
    var id: String
    var skinType: SkinTypes
    var skinConcern: SkinConcerns
}
