//
//  ContentView.swift
//  Fructus
//
//  Created by Rakibul Hasan on 5/10/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List() {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    } //: NAVIGATION LINK
                }
            } //: LIST
            .navigationTitle(Text("Fruit"))
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                       isShowingSettings = true
                   }) {
                       Image(systemName: "slider.horizontal.3")
                   } //: BUTTON
                   .sheet(isPresented: $isShowingSettings) {
                       SettingsView()
                   }
                }
            } //: TOOLBAR
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
