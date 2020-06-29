//
//  ClosuresPresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

protocol ClosureCoordinatorProtocol: AnyObject {
    func showNotificationCenter()
    func showAlertAction()
    func showViewAnimate()
    func showGCD()
    func showGCDDeadline()
    func showEscapingClosure()
    func showNonescapingClosure()
    func showRequest()
}

final class ClosuresPresenter: Presenter {
    
    weak var coordinator: ClosureCoordinatorProtocol?
}

// MARK: ClosuresPresenterProtocol
extension ClosuresPresenter: ClosuresPresenterProtocol {
    
    var closureTypes: [ClosureType] {
        ClosureType.allCases
    }
    
    func didSelectCellAt(row: Int) {
        switch closureTypes[row] {
        case .alertAction:
            coordinator?.showAlertAction()
        case .notificationCenter:
            coordinator?.showNotificationCenter()
        case .viewAnimate:
            coordinator?.showViewAnimate()
        case .gcd:
            coordinator?.showGCD()
        case .gcdWithDeadline:
            coordinator?.showGCDDeadline()
        case .escapingClosure:
            coordinator?.showEscapingClosure()
        case .nonescapingClosure:
            coordinator?.showNonescapingClosure()
        }
    }
}
