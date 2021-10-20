//
//  SettingsLableView.swift
//  Fructus
//
//  Created by Rakibul Hasan on 6/10/21.
//

import SwiftUI

struct SettingsLableView: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}


// MARK: - PREVIEW
struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(labelText: "FRUCTUS", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
