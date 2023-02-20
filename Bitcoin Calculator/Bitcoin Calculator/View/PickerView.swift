//
//  PickerView.swift
//  Bitcoin Calculator
//
//  Created by Нахид Гаджалиев on 20.02.2023.
//

import UIKit

class PickerView: UIPickerView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
