//
//  MenuCollectionViewDataSource.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 05/11/20.
//

import UIKit

// MARK: Properties
/// Responsible for UITableView data that will be presented.
class MenuCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    let viewController: MenuViewController
    
	// MARK: Init
    init(viewController: MenuViewController) {
        self.viewController = viewController
        super.init()
    }
    
	/// Tells the delegate how many cells will be presented.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewController.viewModel.buttonsNames.count
    }
    
	/// Tells the delegate what kind of cells will be presented.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCollectionViewCell.identifier, for: indexPath) as? MenuCollectionViewCell {
            cell.button.setTitle(viewController.viewModel.buttonsNames[indexPath.row], for: .normal)
            cell.button.tag = indexPath.row
            cell.button.addTarget(self, action: #selector(didPressed(_:)), for: .touchUpInside)
            return cell
        }
        return UICollectionViewCell()
    }
    
	// MARK: @objc
    @objc func didPressed(_ sender: UIButton) {
        viewController.presentForm(sender)
    }
}
