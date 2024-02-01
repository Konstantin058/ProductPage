//
//  InfoView.swift
//  HomePage
//
//  Created by Константин Евсюков on 31.01.2024.
//

import SwiftUI

struct ProductView: View {
    var products: Product
    
    var body: some View {
        VStack {
            
            HStack() {
                
                Text(products.price)
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .cornerRadius(15)
            }
            .padding()
            .padding(.trailing, 150)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            VStack {
                
                Image(products.imageProduct)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
            }
            
            HStack(spacing: 10) {
                
                HStack {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    
                    Text(products.raiting)
                    
                    Text("I")
                        .foregroundColor(.gray)
                    
                    Text(products.quantity)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.leading)
                
                Text("-5 %")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .padding()
                    .cornerRadius(10)
            }
            
            HStack {
                
                Text(products.title)
                    .font(.title)
                    .bold()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            
            HStack {
                
                Image(products.imageFlag)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30,height: 30)
                    .cornerRadius(50)
                
                Text(products.nameCountry)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(products: Product(id: 0, price: "Цена по карте", imageProduct: "lipa", imageFlag: "spain", title: "Добавка ЛИПА \nк чаю 200 г", raiting:  "4.1", quantity: "19 отзывов", nameCountry: "Испания, Риоха"))
    }
}
