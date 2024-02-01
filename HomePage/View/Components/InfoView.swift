//
//  InfoView.swift
//  HomePage
//
//  Created by Константин Евсюков on 31.01.2024.
//

import SwiftUI

struct InfoView: View {
    var info: Info
    
    var body: some View {
        HStack {
            
            Text(info.description)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .foregroundColor(.gray)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(info: Info(id: 0, description: "Флавоноиды липового цвета обладает противовоспалительным действием, способствуют укреплению стенков сосудов."))
    }
}
