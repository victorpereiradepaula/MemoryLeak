//
//  HomeViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

protocol HomePresenterProtocol: PresenterProtocol {
    var leakTypes: [MemoryLeakType] { get }
    
    func didSelectCellAt(row: Int)
}

final class HomeViewController: ViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: view.bounds)
        tableView.backgroundColor = .orange
        return tableView
    }()
    
    private weak var presenter: HomePresenterProtocol? {
        basePresenter as? HomePresenterProtocol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        title = "Memory Leaks"
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.leakTypes.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let leakType = presenter?.leakTypes[indexPath.row] else { return UITableViewCell() }
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
