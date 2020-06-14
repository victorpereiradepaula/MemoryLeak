//
//  ClosuresCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class ClosuresCoordinator: Coordinator {
    
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
    }
    
    func start() -> UIViewController {
        let closuresPresenter = ClosuresPresenter()
        closuresPresenter.router = self
        
        return ClosuresViewController(presenter: closuresPresenter)
    }
}

// MARK: ClosureCoordinatorProtocol
extension ClosuresCoordinator: ClosureCoordinatorProtocol {
    
    func openNotificationCenter() {
        navigationController?.pushViewController(NotificationCenterViewController(), animated: true)
    }
    
    func openAlertAction() {
        navigationController?.pushViewController(AlertActionViewController(), animated: true)
    }
    
    func openViewAnimate() {
        
    }
    
    func openGCD() {
        
    }
}
