//
//  MainCoordinator.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit
import Formworks

enum Forms {
    case example
}

struct MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewModel = MenuViewModel(coordinator: self)
        let viewController = MenuViewController(viewModel: viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func present(form: Forms) {
        switch form {
        case .example:
            guard let json = getJSON(for: "Example") else { return }
            let formViewController = FWFormViewController(for: json)
            navigationController.pushViewController(formViewController, animated: true)
        }
    }
    
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
