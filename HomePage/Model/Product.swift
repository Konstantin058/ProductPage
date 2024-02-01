//
//  Info.swift
//  HomePage
//
//  Created by Константин Евсюков on 31.01.2024.
//

import Foundation
import SwiftUI

struct Product: Identifiable, Hashable {
    
    let id: Int
    let price, imageProduct, imageFlag, title, raiting, quantity, nameCountry: String
}
