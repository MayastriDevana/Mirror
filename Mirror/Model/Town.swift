//
//  Town.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation

struct Town: Codable, Hashable{
    var place: String
    var location: String
}

extension Town{
    static let dummyData: [Town] = [
        Town(
            place: "Palembang",
            location: "Lorok Pajko"
        )
    ]
}

