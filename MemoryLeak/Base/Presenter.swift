//
//  Presenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

protocol PresenterProtocol: AnyObject { }

protocol NavigationBackPresenterProtocol: PresenterProtocol {
    
    func didNavigationBack()
}

class Presenter {
    
    private var baseCoordinator: CoordinatorNavigationBackProtocol?
    
    init(coordinator: CoordinatorNavigationBackProtocol? = nil) {
        baseCoordinator = coordinator
    }
    
    #if DEBUG
    deinit {
        print("deinit: \(Self.self)")
    }
    #endif
}

// MARK: NavigationBackPresenterProtocol
extension Presenter: NavigationBackPresenterProtocol {
    
    func didNavigationBack() {
        baseCoordinator?.didNavigationBack()
    }
}

