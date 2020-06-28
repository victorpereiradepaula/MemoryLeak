//
//  StrongReferencesCoordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class StrongReferencesCoordinator: Coordinator {
    
    func start() {
        let strongReferencesViewController = StrongReferencesViewController()
        
        navigationController?.pushViewController(strongReferencesViewController, animated: true)
    }
}
