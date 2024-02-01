//
//  InfoViewModel.swift
//  HomePage
//
//  Created by Константин Евсюков on 31.01.2024.
//

import Foundation

class ProductViewModel: ObservableObject {
    
    @Published var product: Product?
    
    @Published var lenta = [
       Product(id: 0, price: "Цена по карте", imageProduct: "lipa", imageFlag: "spain", title: "Добавка ЛИПА \nк чаю 200 г", raiting:  "4.1", quantity: "19 отзывов", nameCountry: "Испания, Риоха")
    ]
}
