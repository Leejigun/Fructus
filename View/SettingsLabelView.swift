//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/25.
//

import SwiftUI

struct SettingsLabelView: View {
    
    let labelTitle: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelTitle.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelTitle: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
