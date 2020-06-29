//
//  ClosuresViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol ClosuresPresenterProtocol: NavigationBackPresenterProtocol {
    
    var closureTypes: [ClosureType] { get }
    
    func didSelectCellAt(row: Int)
}

final class ClosuresViewController: ViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: view.bounds)
        tableView.backgroundColor = .magenta
        return tableView
    }()
    
    weak var presenter: ClosuresPresenterProtocol? {
        basePresenter as? ClosuresPresenterProtocol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        title = "Closures"
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ClosuresViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.closureTypes.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let leakType = presenter?.closureTypes[indexPath.row] else { return UITableViewCell() }
        let cell = UITableViewCell(style: .default,
                                   reuseIdentifier: "reuseIdentifier")
        cell.textLabel?.text = leakType.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectCellAt(row: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
}
