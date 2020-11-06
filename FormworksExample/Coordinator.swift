//
//  Coordinator.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}
