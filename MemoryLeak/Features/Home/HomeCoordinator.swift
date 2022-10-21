//
//  HomeCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class HomeCoordinator: Coordinator {
    
    private var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        super.init(navigationController: nil)
        let viewModel = HomeViewModel(coordinator: self)
        let navigationController = UINavigationController(rootViewController: HomeViewController(viewModel: viewModel))
        navigationController.navigationBar.backgroundColor = .black
        navigationController.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController.navigationBar.tintColor = .white
        
        self.navigationController = navigationController
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
}

// MARK: HomeCoordinatorProtocol
extension HomeCoordinator: HomeCoordinatorProtocol {
    
    func showDelegates() {
        let delegatesCoordinator = DelegatesCoordinator(navigationController: navigationController)
        delegatesCoordinator.start()
        
        childCoordinator = delegatesCoordinator
    }
    
    func showClosures() {
        let closuresCoordinator = ClosuresCoordinator(navigationController: navigationController)
        closuresCoordinator.start()
        
        childCoordinator = closuresCoordinator
    }
}
