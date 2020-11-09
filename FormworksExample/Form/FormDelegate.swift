//
//  FormDelegate.swift
//  FormworksExample
//
//  Created by Cassia Aparecida Barbosa on 09/11/20.
//

import Foundation
import Formworks


final class FormDelegate: FWFormDelegate {
	func result(_ data: Data) {
		guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else { return }
		print(json)
	}
}
