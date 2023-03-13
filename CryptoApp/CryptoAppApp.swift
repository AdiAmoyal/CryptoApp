//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Adi Amoyal on 13/03/2023.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
