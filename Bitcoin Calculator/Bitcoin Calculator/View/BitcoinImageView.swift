//
//  BitcoinImageView.swift
//  Bitcoin Calculator
//
//  Created by Нахид Гаджалиев on 20.02.2023.
//

import UIKit

class BitcoinImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image = UIImage(systemName: "bitcoinsign.circle.fill")
        contentMode = .scaleAspectFill
        tintColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        setupSize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSize() {
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
}
