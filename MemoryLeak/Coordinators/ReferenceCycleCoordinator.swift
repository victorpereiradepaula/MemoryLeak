//
//  ReferenceCycleCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 28/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class ReferenceCycleCoordinator: Coordinator, CoordinatorNavigationBackProtocol {
    
    func start() {
        let strongReferencesPresenter = ReferenceCyclePresenter(coordinator: self)
        let strongReferencesViewController = ReferenceCycleViewController(presenter: strongReferencesPresenter)
        
        strongReferencesPresenter.viewController = strongReferencesViewController
        
        navigationController?.pushViewController(strongReferencesViewController, animated: true)
    }
}
