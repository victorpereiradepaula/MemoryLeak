//
//  GrandCentralDispatchViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class GrandCentralDispatchViewController: LabelViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.async {
            self.view.backgroundColor = .green
            self.label.textColor = .black
            self.label.text = "DispatchQueue.main.async é seguro sem [weak self]"
        }
    }
}
