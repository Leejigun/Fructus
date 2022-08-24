//
//  SettingsRowView.swift
//  Fructus
//
//  Created by bimo.ez on 2022/08/25.
//

import SwiftUI

struct SettingsRowView: View {
    
    let title: String
    var contents: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                Text(title).foregroundColor(.gray)
                Spacer()
                if let contents = contents {
                    Text(contents)
                } else if let linkLabel = linkLabel, let linkDestination = linkDestination, let url = URL(string: linkDestination) {
                    Link(destination: url) {
                        Text(linkLabel)
                    }
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else  {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(title: "Developer", contents: "Bimo")
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(title: "Website", linkLabel: "naver", linkDestination: "https://naver.com")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
