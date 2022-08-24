//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    @State private var isAnimation: Bool = false
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimation ? 1.0 : 0.6)
                .animation(.easeOut(duration: 0.5), value: isAnimation)
            
        }//: ZStack
        .frame(height: 440)
        .onAppear(perform: {
            isAnimation = true
        })
        .onDisappear(perform: {
            isAnimation = false
        })
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
