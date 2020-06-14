//
//  ClosuresViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol NotificationCenterClosuresPresenterProtocol: PresenterProtocol {
    
}

final class NotificationCenterClosuresViewController: ViewController {
    
    var presenter: NotificationCenterClosuresPresenterProtocol? {
        basePresenter as? NotificationCenterClosuresPresenterProtocol
    }
    
    private lazy var warningLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .yellow
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.text = "Parece que precisamos de [weak self] nas closures do NotificationCenter.default.addObserver"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "DoSomething"), object: nil, queue: .main) { _ in
            self.view.backgroundColor = .green
        }
    }
    
    private func setupView() {
        view.backgroundColor = .red
        view.addSubview(warningLabel)
        
        NSLayoutConstraint.activate([
            warningLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            warningLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            warningLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
    }
}
