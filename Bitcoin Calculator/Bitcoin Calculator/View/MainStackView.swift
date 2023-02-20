//
//  TopStackView.swift
//  Bitcoin Calculator
//
//  Created by Нахид Гаджалиев on 20.02.2023.
//


import UIKit

class MainStackView: UIStackView {
    
    lazy var bitcoinLabel = BitcoinLabelView(frame: .zero)
    lazy var middleStack = MiddleStackView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
        spacing = 10
        addArrangedSubview(bitcoinLabel)
        addArrangedSubview(middleStack)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

