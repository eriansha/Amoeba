//
//  AmoebaApp.swift
//  Amoeba
//
//  Created by Ivan on 20/03/23.
//

import SwiftUI

@main
struct AmoebaApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
