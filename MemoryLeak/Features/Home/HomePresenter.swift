//  
//  HomePresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//


protocol HomeCoordinatorProtocol: AnyObject {
    func showReferenceCycles()
    func showStrongReferences()
    func showClosures()
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
        case .referenceCycles:
            coordinator?.showReferenceCycles()
        case .strongReferences:
            coordinator?.showStrongReferences()
        case .closures:
            coordinator?.showClosures()
        }
    }
}
