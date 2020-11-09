//
//  MenuViewModel.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import Foundation

class MenuViewModel {
    var buttonsNames: [String] = ["Example", "Example 2"]
    var coordinator: MainCoordinator
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
    }
}
