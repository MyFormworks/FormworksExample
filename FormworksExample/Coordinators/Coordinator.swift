//
//  Coordinator.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit

/// Handle with navigation among the screens.
protocol Coordinator {
	var navigationController: UINavigationController { get set }
	
	func start()
}
