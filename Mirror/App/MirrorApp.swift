//
//  MirrorApp.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import SwiftUI
import FirebaseCore

@main
struct MirrorApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MirrorView()
        }
    }
}
