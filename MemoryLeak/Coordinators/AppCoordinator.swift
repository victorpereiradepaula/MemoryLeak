//
//  AppCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    private var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        super.init(callback: nil)
        
        window.rootViewController = createHomeViewController()
        window.makeKeyAndVisible()
    }
    
    private func createHomeViewController() -> UIViewController {
        let presenter = HomePresenter(coordinator: self)
        
        let navigationController = UINavigationController(rootViewController: HomeViewController(presenter: presenter))
        
        self.navigationController = navigationController
        
        return navigationController
    }
}

// MARK: HomeCoordinatorProtocol
extension AppCoordinator: HomeCoordinatorProtocol {
    
    func showReferenceCycles() {
        let referenceCycleCoordinator = ReferenceCycleCoordinator(navigationController: navigationController, callback: self)
        referenceCycleCoordinator.start()
        
        childCoordinator = referenceCycleCoordinator
    }
    
    func showStrongReferences() {
        let strongReferencesCoordinator = StrongReferencesCoordinator(navigationController: navigationController, callback: self)
        strongReferencesCoordinator.start()
        
        childCoordinator = strongReferencesCoordinator
    }
    
    func showClosures() {
        let closuresCoordinator = ClosuresCoordinator(navigationController: navigationController ?? UINavigationController(), callback: self)
        closuresCoordinator.start()
        
        childCoordinator = closuresCoordinator
    }
}
