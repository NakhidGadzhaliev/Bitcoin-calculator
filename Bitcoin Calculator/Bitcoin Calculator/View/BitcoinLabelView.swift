//
//  BitcoinLabelView.swift
//  Bitcoin Calculator
//
//  Created by Нахид Гаджалиев on 20.02.2023.
//

import UIKit

class BitcoinLabelView: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        text = "Bitcoin"
        font = .systemFont(ofSize: 50, weight: .thin)
        textColor = UIColor(named: "Title Color")
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
        setupSize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSize() {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 60),
            widthAnchor.constraint(greaterThanOrEqualToConstant: 230)
        ])
    }
    
}
