//
//  NotificationCenterViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

final class NotificationCenterViewController: LabelViewController, PrintSomethingProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Precisamos de [weak self] nas closures do método addObserver, do NotificationCenter."
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "DoSomething"),
                                               object: nil, queue: .main) { _ in
            self.printSomething()
        }
    }
}
