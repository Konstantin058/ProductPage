//
//  PriceViewModel.swift
//  HomePage
//
//  Created by Константин Евсюков on 01.02.2024.
//

import Foundation

class PriceProductViewModel: ObservableObject {
    
    @Published var price: PriceProduct?
    
    @Published var lenta = [
        PriceProduct(id: 0, price: 55.9)
    ]
}
