//
//  ReferenceCycleViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol ReferenceCyclePresenterProtocol: NavigationBackPresenterProtocol {
    
    func didTapAlertButton()
}

final class ReferenceCycleViewController: LabelViewController {
    
    private var presenter: ReferenceCyclePresenterProtocol? {
        basePresenter as? ReferenceCyclePresenterProtocol
    }
    
    private lazy var alertButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Clique para ver o alerta", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(didTapAlertButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        label.text = "Referências circulares ocorrem quando:\n\n- A classe X tem uma referência da Y;\n- A classe Y tem uma referência da X.\n\nSó há Memory Leak se ambas as referências forem fotes."
        
        title = "Reference Cycle"
    }
    
    private func setupView() {        
        view.addSubview(alertButton)
        NSLayoutConstraint.activate([
            alertButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 24),
            alertButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            alertButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
    }
    
    @objc private func didTapAlertButton() {
        presenter?.didTapAlertButton()
    }
}
