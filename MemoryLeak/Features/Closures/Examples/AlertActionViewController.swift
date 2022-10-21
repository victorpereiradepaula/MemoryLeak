//
//  ClosuresViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class AlertActionViewController: LabelViewController, PrintSomethingProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alertController = UIAlertController(title: "Cuidado",
                                                message: """
Caso o UIAlertController seja salvo em uma variável da classe ele não será seguro sem [weak self].
Para usar de forma segura sem o [weak self], não salve UIAlertController em uma variável da classe.
""",
                                                preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: { _ in
            self.printSomething()
        })
        alertController.addAction(alertAction)
        
        present(alertController, animated: true)
    }
}
