//
//  CoinImageViewModel.swift
//  LimpusCrypto
//
//  Created by George Limpus on 30/11/2025.
//

import Foundation
import Combine
import SwiftUI



class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
        self.isLoading = true
    }
    
    private func addSubscribers() {
        
        dataService.$image
            .sink { [weak self](_) in
                self?.isLoading = false
            } receiveValue: { [weak self](returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)

        
    }
    
}
