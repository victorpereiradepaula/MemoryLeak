//
//  HomeCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class HomeCoordinator: Coordinator {
    
    func start() -> UIViewController {
        let presenter = HomePresenter()
        presenter.coordinator = self
        
        let navigationController = UINavigationController(rootViewController: HomeViewController(presenter: presenter))
        
        self.navigationController = navigationController
        
        return navigationController
    }
}

// MARK: HomeCoordinatorProtocol
extension HomeCoordinator: HomeCoordinatorProtocol {
    
    func openStrongReferences() {
        let strongReferencesCoordinator = StrongReferencesCoordinator()
        navigationController?.pushViewController(strongReferencesCoordinator.start(), animated: true)
        
        childCoordinator = strongReferencesCoordinator
    }
    
    func openClosures() {
        let closuresCoordinator = ClosuresCoordinator(navigationController: navigationController ?? UINavigationController())
        navigationController?.pushViewController(closuresCoordinator.start(), animated: true)
        
        childCoordinator = closuresCoordinator
    }
}
