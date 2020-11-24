//
//  MenuViewController.swift
//  FormworksExample
//
//  Created by Edgar Sgroi on 04/11/20.
//

import UIKit
/// Contains and controls `MenuCollectionView`.
class MenuViewController: UIViewController {
    
	// MARK: Properties
    let viewModel: MenuViewModel
    var collectionViewDataSource: MenuCollectionViewDataSource?
    
    private lazy var collectionView: MenuCollectionView = {
        let collectionView = MenuCollectionView(frame: .zero)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
	// MARK: Init
    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .systemGray6
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
	// MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(collectionView)
        setupConstraints()

        self.collectionViewDataSource = MenuCollectionViewDataSource(viewController: self)
        collectionView.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: MenuCollectionViewCell.identifier)
        collectionView.dataSource = collectionViewDataSource
    }
    
	// MARK: Constraints
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
	// MARK: Show `FWFormViewController`
    func presentForm(_ button: UIButton) {
        switch button.tag {
        case 0:
            self.viewModel.coordinator.present(form: .example)
        case 1:
            self.viewModel.coordinator.present(form: .example)
        default:
            break
        }
    }
}

