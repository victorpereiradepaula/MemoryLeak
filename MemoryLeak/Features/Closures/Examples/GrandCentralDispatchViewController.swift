//
//  GrandCentralDispatchViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class GrandCentralDispatchViewController: LabelViewController, PrintSomethingProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = "DispatchQueue.main.async é seguro sem [weak self]."
        
        DispatchQueue.main.async {
            self.printSomething()
        }
    }
}
