//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { index in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack(alignment: .top, spacing: 8) {
                        Group {
                            Image(systemName: "info.circle")
                            Text("\(nutrients[index])")
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
