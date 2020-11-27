//
//  FormDelegate.swift
//  FormworksExample
//
//  Created by Cassia Aparecida Barbosa on 09/11/20.
//

import Foundation
import Formworks

/// Delegate that get the answers inputed on form.
final class FormDelegate: FWFormViewControllerDelegate {
    func didSubmit(_ answers: FWFormSnapshot) {
        print(answers)
    }
}
