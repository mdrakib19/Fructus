//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Rakibul Hasan on 6/10/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLbl: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 2)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Spacer()
                if content != nil {
                    Text(content!)
                        .fontWeight(.semibold)
                } else if linkLbl != nil && linkDestination != nil {
                    Link(linkLbl!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            } //: HSTACK
        } //: VSTACK
    }
}


// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Rakibul Hasan")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "FB Profile", content: nil, linkLbl: "Rakibul Hasan", linkDestination: "facebook.com/shawnkhan96")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
