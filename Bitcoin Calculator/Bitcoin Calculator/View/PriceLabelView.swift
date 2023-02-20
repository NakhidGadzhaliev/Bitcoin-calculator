//
//  SumLabelView.swift
//  Bitcoin Calculator
//
//  Created by Нахид Гаджалиев on 20.02.2023.
//

import UIKit

class PriceLabelView: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        text = "Choose currency"
        font = .systemFont(ofSize: 25)
        textColor = .white
        textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

