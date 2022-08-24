//
//  FruitCardView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

struct FruitCardView: View {
    
    let fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // MARK: - Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .frame(maxHeight: 460)
                
                // MARK: - Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                // MARK: - Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // MARK: - Start button
                StartButtonView()
                
            }//: VStack
        }//: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .top,
                           endPoint: .bottom)
        )
        .cornerRadius(20)
        .onAppear(perform: {
            isAnimating = true
        })
        .onDisappear(perform: {
            isAnimating = false
        })
        .animation(.easeOut(duration: 0.5), value: isAnimating)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
