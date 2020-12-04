//
//  MenuViewModel.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import Foundation

/// `MenuCollectionView`'s viewModels. This is where all implementation logic will be.
class MenuViewModel {
	
	// MARK: Properties
    var buttonsNames: [String] = ["Example", "Feedback Form", "Modal Form", "Custom Regexes", "Stylized Form"]
    var coordinator: MainCoordinator
    
	//MARK: Init
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
    }
}
