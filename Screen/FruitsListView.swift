//
//  FruitsListView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/24.
//

import SwiftUI

struct FruitsListView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                } //: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        } //: NavigationView
        .navigationViewStyle(.stack)
    }
}

struct FruitsListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
