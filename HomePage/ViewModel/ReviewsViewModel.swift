//
//  ReviewsViewModel.swift
//  HomePage
//
//  Created by Константин Евсюков on 01.02.2024.
//

import Foundation

class ReviewsViewModel: ObservableObject {
    
    @Published var reviews: Reviews?
    
    @Published var lenta = [
        Reviews(id: 0, name: "Александр В", date: "07 мая 2021", description: "Хорошая добавка, мне очень понравилась. Хочу чтобы все добавки были такие"),
        Reviews(id: 0, name: "Александр В", date: "07 мая 2021", description: "Хорошая добавка, мне очень понравилась. Хочу чтобы все добавки были такие"),
        Reviews(id: 0, name: "Александр В", date: "07 мая 2021", description: "Хорошая добавка, мне очень понравилась. Хочу чтобы все добавки были такие")
    ]
}
