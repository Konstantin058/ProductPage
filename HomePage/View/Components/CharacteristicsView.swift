//
//  CharacteristicsView.swift
//  HomePage
//
//  Created by Константин Евсюков on 01.02.2024.
//

import SwiftUI

struct CharacteristicsView: View {
    var characteristic: Characteristics
    
    var body: some View {
        
        VStack(spacing: 5) {
            
            HStack {
                
                Text(characteristic.production)
                    .padding(.trailing, 10)
                    .multilineTextAlignment(.leading)
                
                Text("......")
                    .foregroundColor(.gray.opacity(0.5))
                
                Text(characteristic.country)
                    //.padding(.leading)
                    .multilineTextAlignment(.trailing)
                    
            }
            .padding()
            
            HStack() {
                
                Text(characteristic.energy)
                    .padding(.trailing, 10)
                    .multilineTextAlignment(.leading)
                
                Text("...................")
                    .foregroundColor(.gray.opacity(0.5))
                
                Text(characteristic.energyCcal)
                    .padding(.leading)
            }
            .padding()
            
            HStack  {
                
                Text(characteristic.fats)
                    .padding(.trailing, 10)
                    .multilineTextAlignment(.leading)
                
                Text("...................................................")
                    .foregroundColor(.gray.opacity(0.5))
                
                Text(characteristic.weightFats)
                    .padding(.leading)
            }
            .padding()
            
            HStack  {
                
                Text(characteristic.proteins)
                    .padding(.trailing, 10)
                    
                Text("...................................................")
                    .foregroundColor(.gray.opacity(0.5))
                
                Text(characteristic.weightProteinf)
                    .padding(.leading)
            }
            .padding()
            
            HStack  {
                
                Text(characteristic.carbohydrates)
                    .padding(.trailing, 10)
                    .multilineTextAlignment(.leading)
                
                Text("...........................................")
                    .foregroundColor(.gray.opacity(0.5))
                
                Text(characteristic.weightCarbohydrates)
                    .padding(.leading)
            }
            .padding()
            
            HStack {
                
                Button {
                    
                } label: {
                    
                    Text("Все характеристики")
                        .bold()
                        .foregroundColor(.green)
                }

            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
        }
    }
}

struct CharacteristicsView_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicsView(characteristic: Characteristics(id: 0, production: "Производство", energy: "Энергетическая ценность, ккал/100 г", fats: "Жиры", proteins: "Белки", carbohydrates: "Углеводы", country: "Россия, Краснодарский край", energyCcal: "25 ккал/105 кДж", weightFats: "0.1 г", weightProteinf: "1.3 г", weightCarbohydrates: "3.3 г"))
    }
}
