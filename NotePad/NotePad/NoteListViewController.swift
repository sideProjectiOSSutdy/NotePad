//
//  ViewController.swift
//  NotePad
//
//  Created by 김효성 on 2020/12/03.
//

import UIKit

class NoteListViewController: UIViewController {
    
    private var contentsView: UIView!
    
    init(contentsView: UIView) {
        self.contentsView = contentsView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - Setup UI
extension NoteListViewController {
    private func setupUI() {
        setupContentsView()
    }
    
    private func setupContentsView() {
        view.addSubview(contentsView)
        contentsView.translatesAutoresizingMaskIntoConstraints = false
        
        [contentsView.topAnchor.constraint(equalTo: view.topAnchor),
         contentsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
         contentsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
         contentsView.trailingAnchor.constraint(equalTo: view.trailingAnchor)]
            .forEach { $0.isActive = true }
        
        if let noteListContentsView = contentsView as? NoteListContentsView {
            noteListContentsView.setupTableView(self, self)
        }
    }
}

extension NoteListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // ListCell 을 클릭하면 메모작성하는 곳으로 이동
    }
}

extension NoteListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NoteListCell.ID, for: indexPath) as! NoteListCell
        return cell
    }
}
