//
//  StrongReferencesPresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class StrongReferencesPresenter: Presenter {
    
    var viewController: StrongReferencesViewController?
}

// MARK: StrongReferencesPresenterProtocol
extension StrongReferencesPresenter: StrongReferencesPresenterProtocol {
    
    func didTapAlertButton() {
        let alertController = UIAlertController(title: "Cuidado", message: "Talvez exista um memory leak aqui", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Vamos corrigir", style: .default))
        
        viewController?.present(alertController, animated: true)
    }
}
