//
//  MenuCollectionView.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 04/11/20.
//

import UIKit

// MARK: Properties
/// The `UICollectionView` that will be shown in first screen. Each `MenuCollectionView` cells is responsible for showing a style for `FWForm` built through a JSON file.
final class MenuCollectionView: UICollectionView {
    
	// MARK: Init
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: MenuCollectionView.setupCollectionViewLayout())
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	// MARK: Constraints
    @available(iOS 13.0, *)
    static func setupCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        let itemLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5))
        
        let item = NSCollectionLayoutItem(layoutSize: itemLayoutSize)
        
        let groupLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.3))
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupLayoutSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}
