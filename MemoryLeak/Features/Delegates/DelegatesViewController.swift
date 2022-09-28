//
//  DelegatesViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 28/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol DelegatesViewModelProtocol {
    var title: String { get }
    var labelText: String { get }
}

final class DelegatesViewController: LabelViewController {
    
    private let viewModel: DelegatesViewModelProtocol
    
    init(viewModel: DelegatesViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = viewModel.labelText
        title = viewModel.title
    }
}

// MARK: DelegatesViewDelegate
extension DelegatesViewController: DelegatesViewDelegate {
    
}
