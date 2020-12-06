//
//  NoteListCell.swift
//  NotePad
//
//  Created by 김효성 on 2020/12/06.
//

import UIKit

final class NoteListCell: UITableViewCell {
    static let ID: String = "NoteListCell"
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "2020-01-01"
        label.textColor = UIColor.black
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "12qwe"
        label.textColor = UIColor.black
        return label
    }()
    
    private let deleteButton: UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

// MARK: - Setup UI
extension NoteListCell {
    private func setupUI() {
        setupDateLabel()
        setupDeleteButton()
        setupTitleLabel()
    }
    
    private func setupDateLabel() {
        addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
         dateLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
         dateLabel.widthAnchor.constraint(equalToConstant: 100)]
            .forEach { $0.isActive = true }
    }
    
    private func setupTitleLabel() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [titleLabel.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
         titleLabel.trailingAnchor.constraint(equalTo: deleteButton.leadingAnchor),
         titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)]
            .forEach { $0.isActive = true }
    }
    
    private func setupDeleteButton() {
        addSubview(deleteButton)
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        
        [deleteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
         deleteButton.centerYAnchor.constraint(equalTo: centerYAnchor),
         deleteButton.widthAnchor.constraint(equalToConstant: 15),
         deleteButton.widthAnchor.constraint(equalToConstant: 15)]
            .forEach { $0.isActive = true }
    }
}
