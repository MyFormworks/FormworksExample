//
//  MenuCollectionViewCell.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 04/11/20.
//

import UIKit

/// It is the `MenuCollectionView` cell. 
final class MenuCollectionViewCell: UICollectionViewCell {
    // MARK: Properties
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    static var identifier: String {
        return String(describing: self)
    }
    
	// MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(button)
        setupConstraints()
        setupStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	// MARK: Constraints
    private func setupConstraints() {
        let guide = contentView.safeAreaLayoutGuide
        button.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 300),
            button.heightAnchor.constraint(equalToConstant: 80),
            button.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            button.centerYAnchor.constraint(lessThanOrEqualTo: guide.centerYAnchor)
        ])
    }
    
	// MARK: SetupStyle
	/// Configure `button` properties
    private func setupStyle() {
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22.0, weight: .bold)
        button.backgroundColor = UIColor(red: 253.0/255.0,
                                         green: 92.0/255.0,
                                         blue: 92.0/255.0,
                                         alpha: 1.0)
    }
}
