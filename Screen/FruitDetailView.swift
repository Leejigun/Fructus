//
//  FruitDetailView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    internal init(fruit: Fruit) {
        self.fruit = fruit
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // sub headline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Source Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                } //: VStack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            } //: ScrollView
            .ignoresSafeArea(.all, edges: .top)
        } //: NavigationView
        .navigationViewStyle(.stack)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
