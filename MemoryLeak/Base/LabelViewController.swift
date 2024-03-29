//
//  LabelViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 14/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

class LabelViewController: ViewController {
    
    var centerYConstant: CGFloat {
        .zero
    }
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: centerYConstant),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
    }
}
