//
//  StrongReferencesViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 28/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol StrongReferencesPresenterProtocol: NavigationBackPresenterProtocol { }

final class StrongReferencesViewController: LabelViewController {
    
    private var presenter: StrongReferencesPresenterProtocol? {
        basePresenter as? StrongReferencesPresenterProtocol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Observe que StrongReferencesCoordinator não será desalocado quando voltarmos, porque uma referência forde dele é mantida na variável childCoordinator de HomeCoordinator."
        
        title = "Strong References"
    }
}
