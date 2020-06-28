//
//  Coordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

class Coordinator {
    
    internal var navigationController: UINavigationController?
    internal var childCoordinator: Coordinator?
    
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    
    #if DEBUG
    deinit {
        print("deinit: \(Self.self)")
    }
    #endif
}
