//
//  DelegatesViewModel.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 29/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

protocol DelegatesCoordinatorProtocol: AnyObject { }

protocol DelegatesViewDelegate: AnyObject {
    
}

final class DelegatesViewModel: ViewModel {
    
    private weak var coordinator: DelegatesCoordinatorProtocol?
    weak var viewDelegate: DelegatesViewDelegate?
    
    required init(coordinator: DelegatesCoordinatorProtocol) {
        super.init()
        
        self.coordinator = coordinator
    }
}

// MARK: StrongReferencesPresenterProtocol
extension DelegatesViewModel: DelegatesViewModelProtocol {
    var title: String {
        "Delegates"
    }
    
    var labelText: String {
        """
        Observe que ao voltarmos as classes DelegatesViewController e DelegatesViewModel não serão desalocadas.\n
        O problema:
        - A ViewController retêm uma referência da ViewModel (viewModel).
        - A ViewModel retêm uma referência da ViewController (viewDelegate).\n
        Para corrigir esse tipo de memory leak basta que o viewDelegate seja weak.
        """
    }
}
