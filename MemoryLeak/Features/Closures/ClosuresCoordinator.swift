//
//  ClosuresCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class ClosuresCoordinator: Coordinator {
    
    func start() {
        let viewModel = ClosuresViewModel(coordinator: self)
        let viewController = ClosuresViewController(viewModel: viewModel)
        
        viewModel.viewDelegate = viewController
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: ClosureCoordinatorProtocol
extension ClosuresCoordinator: ClosureCoordinatorProtocol {
    
    func showNotificationCenter() {
        navigationController?.pushViewController(NotificationCenterViewController(), animated: true)
    }
    
    func showAlertAction() {
        navigationController?.pushViewController(AlertActionViewController(), animated: true)
    }
    
    func showViewAnimate() {
        navigationController?.pushViewController(ViewAnimateViewController(), animated: true)
    }
    
    func showGCD() {
        navigationController?.pushViewController(GrandCentralDispatchViewController(), animated: true)
    }
    
    func showGCDDeadline() {
        navigationController?.pushViewController(GrandCentralDispatchDeadlineViewController(), animated: true)
    }
    
    func showEscapingClosure() {
        navigationController?.pushViewController(EscapingFuncViewController(), animated: true)
    }
    
    func showNonescapingClosure() {
        navigationController?.pushViewController(NonescapingVarViewController(), animated: true)
    }
}
