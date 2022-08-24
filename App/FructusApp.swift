//
//  FructusApp.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage(UserDefaultKey.isOnboarding.rawValue) var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            } else {
                Text("")
            }
        }
    }
}
