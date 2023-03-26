//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Adi Amoyal on 26/03/2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
