//
//  ViewController.swift
//  Bitcoin Calculator
//
//  Created by Нахид Гаджалиев on 20.02.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var mainStack = MainStackView(frame: .zero)
    lazy var picker = PickerView(frame: .zero)
    var coinManager = CoinManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        coinManager.delegate = self
        viewUpdate()
        setupConstraints()
    }
    
}

// MARK: - ADDING METHODS

extension MainViewController {
    
    private func viewUpdate() {
        view.backgroundColor = UIColor(named: "Background Color")
        view.addSubview(mainStack)
        view.addSubview(picker)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            mainStack.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            mainStack.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor),
            
            picker.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            picker.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            picker.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor),
        ])
    }
    
}

// MARK: - CoinManagerDelegate
extension MainViewController: CoinManagerDelegate {
    
    func didUpdatePrice(price: String, currency: String) {
        
        DispatchQueue.main.async {
            
            self.mainStack.middleStack.currencyLabel.text = currency
            self.mainStack.middleStack.priceLabel.text = price

        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}

// MARK: - UIPickerViewDataSource, UIPickerViewDelegate
extension MainViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: selectedCurrency)
    }
    
}
