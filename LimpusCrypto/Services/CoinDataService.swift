//
//  CoinDataService.swift
//  LimpusCrypto
//
//  Created by George Limpus on 29/11/2025.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
        
    }
    
    private func getCoins() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=gbp&category=layer-1&price_change_percentage=24h&order=market_cap_desc&per_page=250&page=1&sparkline=true")
        else { return  }
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink { (completion)  in
                switch completion {
                case  .finished:
                    break
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
                print("Fetched coins: \(returnedCoins.count)")
            }
    
    }
}
