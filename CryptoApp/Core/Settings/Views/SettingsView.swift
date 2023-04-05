//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Adi Amoyal on 05/04/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    
    var body: some View {
        NavigationView {
            List {
                swiftfulThinkingSection
                coingeckSection
                developerSection
                applicationSection
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    xmarkButton
                }
            }
        }
        
    }
}

extension SettingsView {
    
    private var xmarkButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
    
    private var swiftfulThinkingSection: some View {
        Section("Swiftful Thinking") {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by folloing a @SwiftfulThinking course on YouTube. It Uses MVVM Architecture, Combine, and Core Data")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
        }
    }
    
    private var coingeckSection: some View {
        Section("Coingecko") {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from Coingeck! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit Coingecko", destination: coingeckoURL)
        }
        .accentColor(.blue)
    }
    
    private var developerSection: some View {
        Section("Developer") {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Adi Amoyal. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, published/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
        }
    }
    
    private var applicationSection: some View {
        Section("Application") {
            Link("Terms of service", destination: defaultURL)
            Link("Privacy policy", destination: defaultURL)
            Link("Company website", destination: defaultURL)
            Link("Learn more", destination: defaultURL)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
