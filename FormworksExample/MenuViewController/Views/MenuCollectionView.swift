//
//  MenuCollectionView.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 04/11/20.
//

import UIKit

final class MenuCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: MenuCollectionView.setupCollectionViewLayout())
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(iOS 13.0, *)
    static func setupCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        let itemLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5))
        
        let item = NSCollectionLayoutItem(layoutSize: itemLayoutSize)
        
        let groupLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.3))
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupLayoutSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 20
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}
