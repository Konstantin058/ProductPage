//
//  Characteristics.swift
//  HomePage
//
//  Created by Константин Евсюков on 01.02.2024.
//

import Foundation

struct Characteristics: Identifiable, Hashable {
    let id: Int
    let production, energy, fats, proteins, carbohydrates, country, energyCcal, weightFats, weightProteinf, weightCarbohydrates: String
}
