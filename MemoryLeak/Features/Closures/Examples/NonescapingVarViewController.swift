//
//  NonescapingVarViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 19/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

final class NonescapingVarViewController: LabelViewController, PrintSomethingProtocol {
    
    var nonescapingVar: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "@nonescaping closures só introduzir memory leak quando:\n\n- A closure é salva em uma propriedade ou passado para outra closure;\n- Dentro da closure é mantida uma referência forte"
        
        nonescapingVar = {
            self.printSomething()
        }
    }
}
