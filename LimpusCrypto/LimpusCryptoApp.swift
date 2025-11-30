//
//  LimpusCryptoApp.swift
//  LimpusCrypto
//
//  Created by George Limpus on 24/11/2025.
//

import SwiftUI

@main
struct LimpusCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
