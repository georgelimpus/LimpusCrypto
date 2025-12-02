//
//  CoinImageView.swift
//  LimpusCrypto
//
//  Created by George Limpus on 30/11/2025.
//

import SwiftUI
import Combine

struct CoinImageView: View {
    
    @StateObject var vm: CoinImageViewModel
    
    init (coin: CoinModel) {
        
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
        
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinImageView(coin: dev.coin)
        .padding()
}
