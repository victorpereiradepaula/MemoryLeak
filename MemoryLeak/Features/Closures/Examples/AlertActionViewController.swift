//
//  ClosuresViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class AlertActionViewController: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        let alertController = UIAlertController(title: "Olha só", message: "Parece que UIAlertActions são seguras sem [weak self] 😮", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Show", style: .default, handler: { _ in
            self.navigationController?.popViewController(animated: true)
        })
        alertController.addAction(alertAction)
        
        present(alertController, animated: true)
    }
    
    private func setupView() {
        view.backgroundColor = .red
    }
}
