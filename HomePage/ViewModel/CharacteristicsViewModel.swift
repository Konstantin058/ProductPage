//
//  CharacteristicsViewModel.swift
//  HomePage
//
//  Created by Константин Евсюков on 01.02.2024.
//

import Foundation

class CharacteristicsViewModel: ObservableObject {
    
    @Published var characteristics: Characteristics?
    
    @Published var lenta = [
        Characteristics(id: 0, production: "Производство", energy: "Энергетическая ценность, ккал/100 г", fats: "Жиры", proteins: "Белки", carbohydrates: "Углеводы", country: "Россия, Краснодарский край", energyCcal: "25 ккал/105 кДж", weightFats: "0.1 г", weightProteinf: "1.3 г", weightCarbohydrates: "3.3 г")
    ]
}
