//
//  Coordinator.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol FatherCoordinatorProtocol: AnyObject {
    
    func setChildCoordinatorAsNil()
}

class Coordinator: FatherCoordinatorProtocol {
    
    internal var navigationController: UINavigationController?
    internal var childCoordinator: Coordinator?
    internal var callback: FatherCoordinatorProtocol?
    
    init(navigationController: UINavigationController? = nil, callback: Coordinator?) {
        self.navigationController = navigationController
        self.callback = callback
    }
    
    #if DEBUG
    deinit {
        print("deinit: \(Self.self)")
    }
    #endif
    
    internal func setChildCoordinatorAsNil() {
        childCoordinator = nil
    }
}

// MARK: CoordinatorNavigationBackProtocol
protocol CoordinatorNavigationBackProtocol: AnyObject {
    
    func didNavigationBack()
}

extension CoordinatorNavigationBackProtocol where Self: Coordinator {
    
    func didNavigationBack() {
        callback?.setChildCoordinatorAsNil()
    }
}
