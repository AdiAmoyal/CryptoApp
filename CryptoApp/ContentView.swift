//
//  ContentView.swift
//  CryptoApp
//
//  Created by Adi Amoyal on 13/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
