//
//  StrongReferencesCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class StrongReferencesCoordinator: Coordinator {
    
    func start() -> UIViewController {
        let strongReferencesPresenter = StrongReferencesPresenter()
        let strongReferencesViewController = StrongReferencesViewController(presenter: strongReferencesPresenter)
        
        strongReferencesPresenter.viewController = strongReferencesViewController
        
        return strongReferencesViewController
    }
}
