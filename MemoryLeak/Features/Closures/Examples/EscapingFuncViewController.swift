//
//  EscapingFuncViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 19/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class EscapingFuncViewController: LabelViewController, PrintSomethingProtocol {
    
    private lazy var escapingVar: ((Error?) -> Void) = { error in
        self.printSomething()
        print("Error: \(error?.localizedDescription ?? "-")")
        
    }
    
    private func escapingFunc(completionHandler: @escaping (Error?) -> Void) {
        guard let url = URL(string: "https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html") else { return }
        URLSession.shared.dataTask(with: url) { _,_, error in
            completionHandler(error)
        }.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = """
        @escaping closures podem introduzir memory leaks quando:\n
        - A closure é salva em uma propriedade ou passado para outra closure;
        - Dentro da closure é mantida uma referência forte.
        """
        
        escapingFunc(completionHandler: escapingVar)
    }
}
