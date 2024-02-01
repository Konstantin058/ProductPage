//
//  InfoViewModel.swift
//  HomePage
//
//  Created by Константин Евсюков on 31.01.2024.
//

import Foundation

class InfoViewModel: ObservableObject {
    
    @Published var info: Info?
    
    @Published var lenta = [
       Info(id: 0, description: "Флавоноиды липового цвета обладает противовоспалительным действием, способствуют укреплению стенков сосудов.")
    ]
}
