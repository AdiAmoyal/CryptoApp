//
//  String.swift
//  CryptoApp
//
//  Created by Adi Amoyal on 05/04/2023.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
