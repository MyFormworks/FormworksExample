//
//  FormDelegate.swift
//  FormworksExample
//
//  Created by Cassia Aparecida Barbosa on 09/11/20.
//

import Foundation
import Formworks

final class FormDelegate: FWFormViewControllerDelegate {
    func didSubmit(_ answers: FWFormSnapshot) {
        print(answers)
    }
}
