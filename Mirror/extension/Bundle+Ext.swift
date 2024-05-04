//
//  Bundle+Ext.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Menentukan lokasi dari file jsonn
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in bundle.")
        }
        // 2. Set dan load data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) from bundle.")
        }
        // 3. buat decoder
        let decoder = JSONDecoder()
        
        // 4. Simpan sebagai property dari hasil data json yang sudah di decode
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) from bundle.")
        }
        // 5. return data yang sudah di decode dan ready to use
        return loaded
        
    }
}
