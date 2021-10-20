//
//  SettingsView.swift
//  Fructus
//
//  Created by Rakibul Hasan on 6/10/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // SECTION 1
                    GroupBox {
                        Divider()
                            .padding(4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        } //: HSTACK
                    } label: {
                        
                        
                        SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
                    } //: BOX
                    
                    // SECTION 2
                    GroupBox {
                        Divider()
                        Text("If you wish, you can restart the application by tuggle the switch in the box. That way it start it start the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } label: {
                        SettingsLableView(labelText: "Customization".uppercased(), labelImage: "paintbrush")
                    }
                    
                    
                    // SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Rakibul Hasan")
                        SettingsRowView(name: "Designer", content: "Unknown")
                        SettingsRowView(name: "Compativility", content: "iOS 15")
                        SettingsRowView(name: "LinkedIn", linkLbl: "@Rakibul Hasan", linkDestination: "linkedin.com/in/rakibul-hasan-bbb489147")
                        SettingsRowView(name: "Facebook", linkLbl: "@Rakibul Hasan", linkDestination: "facebook.com/shawnkhan96")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    } label: {
                        SettingsLableView(labelText: "Application".uppercased(), labelImage: "apps.iphone")
                    } //: BOX
                    
                    
                } //: VSTACK
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    }
                } //: TOOLBAR
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}


// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
        //.colorScheme(.dark)
    }
}
