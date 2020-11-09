//
//  FromDelegate.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 09/11/20.
//

import Foundation
import Formworks

final class FromDelegate: FWFormDelegate {
    
    func result(_ data: Data) {

    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else { return }

    print(json)
    }
}
