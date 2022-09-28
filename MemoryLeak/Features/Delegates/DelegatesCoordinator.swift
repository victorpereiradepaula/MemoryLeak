//
//  DelegatesCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class DelegatesCoordinator: Coordinator {
    
    func start() {
        let viewModel = DelegatesViewModel(coordinator: self)
        let viewController = DelegatesViewController(viewModel: viewModel)
        viewModel.viewDelegate = viewController
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: DelegatesCoordinatorProtocol
extension DelegatesCoordinator: DelegatesCoordinatorProtocol {

}
