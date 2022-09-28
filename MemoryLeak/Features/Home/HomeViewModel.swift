//  
//  HomePresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//


protocol HomeCoordinatorProtocol: AnyObject {
    func showDelegates()
    func showClosures()
}

final class HomeViewModel: ViewModel {
    
    private weak var coordinator: HomeCoordinatorProtocol?
    
    required init(coordinator: HomeCoordinatorProtocol) {
        super.init()
        
        self.coordinator = coordinator
    }
}

// MARK: HomePresenterProtocol
extension HomeViewModel: HomeViewModelProtocol {
    var title: String {
        "Memory leak"
    }
    
    var labelText: String {
        """
        Referências circulares ocorrem quando:
        
        Temos duas classe X e Y:
         - A classe X mantém referência de Y;
         - A classe Y mantém referência de X.
        
        ou
        
        Temos uma classe e uma closure:
         - A classe Z mantém referência da closure;
         - A closure mantém referência de Z;
        
        Um memory leak ocorre se ambas as referências são fotes.
        """
    }
    
    var leakTypes: [MemoryLeakType] {
        MemoryLeakType.allCases
    }
    
    func didSelectCellAt(row: Int) {
        switch leakTypes[row] {
        case .delegates:
            coordinator?.showDelegates()
        case .closures:
            coordinator?.showClosures()
        }
    }
}
