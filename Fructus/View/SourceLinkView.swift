//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Rakibul Hasan on 6/10/21.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://www.wikipedia.org/")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}


// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
