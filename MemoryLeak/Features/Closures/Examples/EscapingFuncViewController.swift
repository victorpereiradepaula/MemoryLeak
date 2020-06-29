//
//  EscapingFuncViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 19/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class EscapingFuncViewController: LabelViewController, PrintSomethingProtocol {
    
    func escapingFunc(completionHandler: @escaping (Error?) -> Void) {
        guard let url = URL(string: "https://www.google.com.br") else { return }
        URLSession.shared.dataTask(with: url) { _,_, error in
            completionHandler(error)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = ""
        
        escapingFunc() { [weak self] error in
            self?.printSomething()
            print("Error: \(error?.localizedDescription ?? "-")")
        }
    }
}
