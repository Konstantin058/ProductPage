//
//  PriceView.swift
//  HomePage
//
//  Created by Константин Евсюков on 01.02.2024.
//

import SwiftUI

struct PriceView: View {
    var price: PriceProduct
    
    var body: some View {
        
        HStack {
            
            VStack {
                
                HStack(spacing: -2) {
                    
                    Text(String(format: "%.1f ", price.price))
                        .font(.title)
                        .bold()
                    
                    Text("Р/кг")
                        .bold()
                        .padding(.bottom, 5)
                        
                }
                
                HStack {
                    
                    Text("199,0")
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                .padding(.trailing, 50)
            }
            
            
            Spacer()
            
            HStack {
                
                Button {
                    
                } label: {
                    
                    HStack {
                        
                        HStack {
                            
                            Image(systemName: "minus")
                                .font(.caption)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                        }
                        .padding(.trailing)
                    }
                    
                    VStack {
                        
                        Text("1 шт")
                            .foregroundColor(.white)
                        
                        Text("120 руб")
                            .foregroundColor(.white.opacity(0.5))
                    }
                    
                    Button {
                        
                    } label: {
                        
                        HStack {
                            
                            Image(systemName: "plus")
                                .font(.caption)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                        }
                        .padding(.leading)
                    }

                    
                }
                .padding()
                .background(.green)
                .cornerRadius(50)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(price: PriceProduct(id: 0, price: 55.9))
    }
}
