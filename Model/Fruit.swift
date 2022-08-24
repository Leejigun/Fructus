//
//  Fruit.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]   
}
