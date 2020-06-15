//
//  GCDAfterViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 14/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class GCDWithDeadlineViewController: LabelViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .yellow
        self.label.text = "Assim como o DispatchQueue.main.async, o DispatchQueue.main.asyncAfter irá desalocar a memória mesmo sem [weak self], mas apenas após a execução do bloco."
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10, execute: {
            self.openMessage()
        })
    }
    
    private func openMessage() {
        UIApplication.shared.open(URL(string: "https://docs.google.com/document/d/1upvEhObMsFFdUunteL9bPjnWMLMZLc2AU8CrRKviZbo/edit?usp=sharing")!)
    }
}
