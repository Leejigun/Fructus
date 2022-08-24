//
//  OnboardingView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

struct OnboardingView: View {
    
    private let fruits: [Fruit] = fruitsData
    
    var body: some View {
        
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
            .padding(.horizontal, 20)
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
