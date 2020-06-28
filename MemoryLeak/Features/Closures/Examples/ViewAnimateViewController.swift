//
//  ViewAnimateViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class ViewAnimateViewController: LabelViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.5, animations: {
            self.view.backgroundColor = .green
            self.label.textColor = .black
        }) { _ in
            self.label.text = "UIView.animate é seguro sem [weak self]"
        }
    }
}
