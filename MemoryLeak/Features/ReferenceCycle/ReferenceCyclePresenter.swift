//
//  ReferenceCyclePresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class ReferenceCyclePresenter: Presenter {
    
    weak var viewController: ReferenceCycleViewController?
}

// MARK: StrongReferencesPresenterProtocol
extension ReferenceCyclePresenter: ReferenceCyclePresenterProtocol {
    
    func didTapAlertButton() {
        let alertController = UIAlertController(title: nil, message: "Cuidado com referências circulares.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default))
        
        viewController?.present(alertController, animated: true)
    }
}
