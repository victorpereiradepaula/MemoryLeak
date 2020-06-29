//
//  StrongReferencesCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class StrongReferencesCoordinator: Coordinator, StrongReferencesCoordinatorProtocol {
    
    func start() {
        let strongReferencesPresenter = StrongReferencesPresenter(coordinator: self)
        let strongReferencesViewController = StrongReferencesViewController(presenter: strongReferencesPresenter)
        
        navigationController?.pushViewController(strongReferencesViewController, animated: true)
    }
}
