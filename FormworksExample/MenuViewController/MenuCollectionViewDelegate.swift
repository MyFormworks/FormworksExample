//
//  MenuCollectionViewDelegate.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit

class MenuCollectionViewDelegate: NSObject, UICollectionViewDelegateFlowLayout {
    let viewController: MenuViewController
    
    init(viewController: MenuViewController) {
        self.viewController = viewController
    }
}
