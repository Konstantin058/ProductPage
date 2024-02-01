//
//  HomeView.swift
//  HomePage
//
//  Created by Константин Евсюков on 31.01.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var productViewModel = ProductViewModel()
    @StateObject var infoViewModel = InfoViewModel()
    @StateObject var characteristicsViewModel = CharacteristicsViewModel()
    @StateObject var reviewsViewModel = ReviewsViewModel()
    @StateObject var priceProductViewModel = PriceProductViewModel()
    
    @Environment(\.dismiss) var backButton
    
    @State private var selectedSide: WeightOrQuentity = .quentity
    
    var body: some View {
        ZStack {
            
            NavigationView {
                
                ScrollView(showsIndicators: false) {
                    
                    VStack {
                        
                        ForEach(productViewModel.lenta) { product in
                            ProductView(products: product)
                        }
                    }
                    
                    VStack {
                        
                        HStack {
                            
                            Text("Описание")
                                .bold()
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .padding(.top)
                        .padding(.bottom, -35)
                        
                        VStack {
                            
                            ForEach(infoViewModel.lenta) { product in
                                InfoView(info: product)
                            }
                        }
                        .padding(.bottom, -20)
                        
                        HStack {
                            
                            Text("Основные характеристики")
                                .bold()
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .padding(.top)
                        .padding(.bottom, -25)
                        
                        VStack {
                            
                            ForEach(characteristicsViewModel.lenta) { product in
                                
                                CharacteristicsView(characteristic: product)
                            }
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack(spacing: 15) {
                                
                                ForEach(reviewsViewModel.lenta) { product in
                                    ReviewsView(reviews: product)
                                }
                            }
                            .padding()
                        }
                        
                        Button {
                            
                        } label: {
                            
                            Text("Оставить отзыв")
                                .padding()
                                .frame(width: 350)
                                .font(.title2)
                                .bold()
                                .foregroundColor(.green)
                                //.padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.green, lineWidth: 5)
                                )
                                
                        }
                        .padding()
                        
                        Picker("", selection: $selectedSide) {
                            ForEach(WeightOrQuentity.allCases, id: \.self) {
                                Text($0.rawValue)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                        
                        VStack {
                            
                            ForEach(priceProductViewModel.lenta) { product in
                                PriceView(price: product)
                            }
                        }

                    }
                }
                .navigationTitle("")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            backButton()
                        } label: {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(.green)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.plaintext")
                                .foregroundColor(.green)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.green)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    
    enum WeightOrQuentity: String, CaseIterable {
        case quentity = "Шт"
        case weight = "Кг"
    }
}
