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
        super.init()
        
        let homeCoordinator = HomeCoordinator()
        childCoordinator = homeCoordinator
        
        window.rootViewController = homeCoordinator.start()
        window.makeKeyAndVisible()
    }
}
