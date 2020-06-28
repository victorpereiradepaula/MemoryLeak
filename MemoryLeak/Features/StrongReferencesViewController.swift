//
//  StrongReferencesViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 28/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class StrongReferencesViewController: LabelViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Observe que o coordinator StrongReferencesCoordinator não será desalocado quando voltarmos, porque uma referência forde dele é mantida na variável childCoordinator de HomeCoordinator."
    }
}
