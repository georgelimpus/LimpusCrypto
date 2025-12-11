//
//  CoinLogoView.swift
//  LimpusCrypto
//
//  Created by George Limpus on 11/12/2025.
//

import SwiftUI

struct CoinLogoView: View {
    
    let coin: CoinModel
    
    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .lineLimit(2 )
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(TextAlignment.center)
                
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinLogoView(coin: dev.coin)
}
 
#Preview(traits: .sizeThatFitsLayout) {
    CoinLogoView(coin: dev.coin)
        .preferredColorScheme(.dark )
}
