//  
//  HomePresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//


protocol HomeCoordinatorProtocol: AnyObject {
    func openStrongReferences()
    func openClosures()
}

final class HomePresenter: Presenter {
    
    weak var coordinator: HomeCoordinatorProtocol?
}

// MARK: HomePresenterProtocol
extension HomePresenter: HomePresenterProtocol {
    
    var leakTypes: [MemoryLeakType] {
        MemoryLeakType.allCases
    }
    
    func didSelectCellAt(row: Int) {
        switch leakTypes[row] {
        case .strongReferences:
            coordinator?.openStrongReferences()
        case .closures:
            coordinator?.openClosures()
        }
    }
}
