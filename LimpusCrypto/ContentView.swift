//
//  ContentView.swift
//  LimpusCrypto
//
//  Created by George Limpus on 24/11/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                
                Text("Secondary Color")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
                 
                }
            .font(.headline)
            }
        }
}

#Preview {
    ContentView()
}
