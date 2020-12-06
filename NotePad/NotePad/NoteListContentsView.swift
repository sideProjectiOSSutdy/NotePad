//
//  NoteList.swift
//  NotePad
//
//  Created by 김효성 on 2020/12/06.
//

import UIKit

final class NoteListContentsView: UIView {
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(NoteListCell.self,
                           forCellReuseIdentifier: NoteListCell.ID)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
}

// MARK: - Setup UI
extension NoteListContentsView {
    private func setupUI() {
        setupTableView()
    }
    
    private func setupTableView() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        [tableView.topAnchor.constraint(equalTo: topAnchor),
         tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
         tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
         tableView.trailingAnchor.constraint(equalTo: trailingAnchor)]
            .forEach { $0.isActive = true }
    }
}


extension NoteListContentsView {
    public func setupTableView(_ delegate: UITableViewDelegate, _ dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
}


