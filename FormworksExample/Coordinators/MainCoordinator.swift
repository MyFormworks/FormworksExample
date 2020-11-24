//
//  MainCoordinator.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit
import Formworks

// MARK: `ENUM`
/// Responsible to identify which form will be shown.
enum Forms {
	case example
}

// MARK: Properties
/// Class responsible for deal with the navigation among screens.
struct MainCoordinator: Coordinator {
	var navigationController: UINavigationController
	
	/// Set the `MenuViewController` as the initial `ViewController` to be presented.
	func start() {
		let viewModel = MenuViewModel(coordinator: self)
		let viewController = MenuViewController(viewModel: viewModel)
		
		navigationController.pushViewController(viewController, animated: true)
	}
	
	/// Present the `FWFormViewController` according given JSON.
	func present(form: Forms) {
		switch form {
		case .example:
			guard let json = getJSON(for: "Example") else { return }
			let formViewController = FWFormViewController(configuration: FWConfiguration(json: json, style: .dark))
			navigationController.pushViewController(formViewController, animated: true)
//			formViewController.modalPresentationStyle = .fullScreen
//			navigationController.present(formViewController, animated: true, completion: nil)
		}
	}
	
	/// Decode a JSON passed with the form's information.
	private func getJSON(for resource: String) -> Data? {
		guard let url = Bundle.main.url(forResource: resource, withExtension: "json") else { return nil}
		var data: Data?
		do {
			data = try Data(contentsOf: url)
		} catch {
			print(error.localizedDescription)
		}
		guard let jsonData = data else { return nil }
		
		return jsonData
	}
}
