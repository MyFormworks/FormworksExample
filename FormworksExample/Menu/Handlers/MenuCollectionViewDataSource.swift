//
//  MenuCollectionViewDataSource.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit

class MenuCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    let viewController: MenuViewController
    
    init(viewController: MenuViewController) {
        self.viewController = viewController
        super.init()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewController.viewModel.buttonsNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCollectionViewCell.identifier, for: indexPath) as? MenuCollectionViewCell {
            
            cell.button.setTitle(viewController.viewModel.buttonsNames[indexPath.row], for: .normal)
            cell.button.tag = indexPath.row
            cell.button.addTarget(self, action: #selector(didPressed(_:)), for: .touchUpInside)
            return cell
        }
        return UICollectionViewCell()
    }
    
    @objc func didPressed(_ sender: UIButton) {
        viewController.presentForm(sender)
    }
}
