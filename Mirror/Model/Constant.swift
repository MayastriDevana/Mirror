//
//  Constant.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation

struct Constant {
//    static let cityString = City.Palembang.rawValue
    static let prompt = """
    give me recomendation of cosmetic store in the city of Jakarta. Provide the response as an array of JSON as
    {
        [
            "place": "name",
            "location": "Address",
        ]
    }
    
    only. Remove any backticks.
    
    """
}
