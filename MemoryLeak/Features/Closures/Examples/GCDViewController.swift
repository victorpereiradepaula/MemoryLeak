//
//  GCDViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class GCDViewController: LabelViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.async {
            self.view.backgroundColor = .green
            self.label.textColor = .black
            self.label.text = "Parece que os DispatchQueue.main.async são seguros sem [weak self] 😮"
        }
    }
}
