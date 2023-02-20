//
//  MiddleStackView.swift
//  Bitcoin Calculator
//
//  Created by Нахид Гаджалиев on 20.02.2023.
//

import UIKit

class MiddleStackView: UIStackView {
    
    lazy var bitcoinImage = BitcoinImageView(frame: .zero)
    lazy var priceLabel = PriceLabelView(frame: .zero)
    lazy var currencyLabel = СurrencyLabelView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .horizontal
        spacing = 10
        addArrangedSubview(bitcoinImage)
        addArrangedSubview(priceLabel)
        addArrangedSubview(currencyLabel)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .tertiaryLabel
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
}
