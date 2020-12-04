//
//  Coordinator.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit


/// Protocols that handle with the navigation among the screens.
protocol Coordinator {
	var navigationController: UINavigationController { get set }
	
	func start()
}
