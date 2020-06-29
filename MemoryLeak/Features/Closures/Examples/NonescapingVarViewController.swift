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
        
        nonescapingVar = { [weak self] in
            self?.printSomething()
        }
    }
}
