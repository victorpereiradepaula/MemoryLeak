//
//  StrongReferencesPresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 29/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

protocol StrongReferencesCoordinatorProtocol: CoordinatorNavigationBackProtocol { }

final class StrongReferencesPresenter: Presenter, StrongReferencesPresenterProtocol {
    
    weak var coordinator: StrongReferencesCoordinatorProtocol?
    
    required init(coordinator: StrongReferencesCoordinatorProtocol) {
        super.init(coordinator: coordinator)
        
        self.coordinator = coordinator
    }
}
