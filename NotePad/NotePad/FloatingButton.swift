//
//  FloatingView.swift
//  NotePad
//
//  Created by 김효성 on 2020/12/08.
//

import UIKit

final class FloatingButton: UIButton {
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.purple
        return imageView
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
extension FloatingButton {
    private func setupUI() {
        setupBackgroundImageView()
    }
    
    private func setupBackgroundImageView() {
        addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        [backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
         backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
         backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
         backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor)]
            .forEach { $0.isActive = true }
    }
}
