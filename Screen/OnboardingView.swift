//
//  OnboardingView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        TabView {
            ForEach(0..<5) { item in
                FruitCardView(name: "Blueberry",
                              imageName: "blueberry",
                              headline: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.",
                              backgroundColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")])
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
    }
}
