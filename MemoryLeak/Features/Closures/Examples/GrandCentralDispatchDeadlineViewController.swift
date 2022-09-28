//
//  GrandCentralDispatchDeadlineViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 14/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class GrandCentralDispatchDeadlineViewController: LabelViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = """
        Assim como o DispatchQueue.main.async, o DispatchQueue.main.asyncAfter irá desalocar a memória mesmo sem [weak self], mas apenas após a execução do bloco.\n
        Saia desta tela e espere o comportamento inesperado.
        """
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 15, execute: {            self.showArcDocumentation()
        })
    }
    
    private func showArcDocumentation() {
        UIApplication.shared.open(URL(string: "https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html")!)
    }
}
