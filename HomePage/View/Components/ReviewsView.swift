//
//  ReviewsView.swift
//  HomePage
//
//  Created by Константин Евсюков on 01.02.2024.
//

import SwiftUI

struct ReviewsView: View {
    var reviews: Reviews
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                HStack {
                    
                    Text(reviews.name)
                        .font(.title2)
                        .bold()
                    .padding(.bottom, 3)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    
                    Text(reviews.date)
                        .foregroundColor(.gray)
                    .padding(.bottom, 10)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, -35)
                
                HStack {
                    
                    StarsView(rating: 4, maxRating: 5)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, -35)
                    
                HStack {
                    
                    Text(reviews.description)
                }
                .padding(.bottom, -35)
            }
            .padding()
        }
        .padding()
        .padding(.leading, -10)
        .padding(.bottom, 19)
        .frame(maxWidth: .infinity)
        .frame(width: 300, height: 265)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
        .shadow(radius: 3)
    }
}

struct ReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsView(reviews: Reviews(id: 0, name: "Александр В", date: "07 мая 2021", description: "Хорошая добавка, мне очень понравилась. Хочу чтобы все добавки были такие"))
    }
}
