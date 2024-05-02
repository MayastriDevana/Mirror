//
//  BeautyProfile.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation

enum SkinTypes: String, CaseIterable, Identifiable, Codable{
    case Kering = "Kering"
    case Berminyak = "Berminyak"
    case Kombinasi = "Kombinasi"
    case Normal = "Normal"
    case Sensitif = "Sensitif"
    var id: String { self.rawValue }
}

enum SkinConcerns: String, CaseIterable, Identifiable, Codable{
    case Komedo
    case Aging
    case KulitKusam
    case KantungMata
    case PoriBesar
    case Cellulite
    case Jerawat
    case MarkDullness
    case DarkSpots
    case Blackheads
    case Blemishes
    case DarkCircles
    var id: String { self.rawValue }
}
