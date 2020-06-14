//
//  StrongReferencesViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol StrongReferencesPresenterProtocol: PresenterProtocol {
    func didTapAlertButton()
}

final class StrongReferencesViewController: ViewController {
    
    var presenter: StrongReferencesPresenterProtocol? {
        basePresenter as? StrongReferencesPresenterProtocol
    }
    
    private lazy var alertButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Clique para ver o alerta", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapAlertButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .purple
        
        view.addSubview(alertButton)
        NSLayoutConstraint.activate([
            alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc private func didTapAlertButton() {
        presenter?.didTapAlertButton()
    }
}
