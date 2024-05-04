//
//  City.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation

enum City: String, CaseIterable, Identifiable, Codable{
    case DkiJakarta = "DKI Jakarta"
    case Surabaya = "Surabaya"
    case Bandung = "Bandung"
    case Medan = "Medan"
    case Bekasi = "Bekasi"
    case Semarang = "Semarang"
    case Tanggerang = "Tanggerang"
    case Depok = "Depok"
    case Palembang = "Palembang"
    case Makassar = "Makassar"
    var id: String { self.rawValue }
}

