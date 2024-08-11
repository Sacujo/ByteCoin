//
//  ViewController.swift
//  ByteCoin
//
//  Created by Igor Guryan on 11.08.2024.
//

import UIKit
import SnapKit

class CoinViewController: UIViewController {
    
    let pickerView = UIPickerView()
    let topStack = UIStackView()
    let byteCoinLabel = UILabel()
    let coinView = UIView()
    let coinViewStack = UIStackView()
    let coinSignImageView = UIImageView()
    let countLabel = UILabel()
    let currencyLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    
    
    
    
    func setupUI() {
        view.backgroundColor = UIColor(named: "BackgroundColour")
        
        view.addSubview(pickerView)
        view.addSubview(topStack)
        topStack.addArrangedSubview(byteCoinLabel)
        topStack.addArrangedSubview(coinView)
        coinView.addSubview(coinViewStack)
        coinViewStack.addArrangedSubview(coinSignImageView)
        coinViewStack.addArrangedSubview(countLabel)
        coinViewStack.addArrangedSubview(currencyLabel)
        
        
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        
        topStack.axis = .vertical
        topStack.alignment = .center
        topStack.distribution = .fill
        topStack.spacing = 25
        topStack.contentMode = .scaleToFill
        
        byteCoinLabel.text = "ByteCoin"
        byteCoinLabel.textColor = UIColor(named: "TitleColour")
        byteCoinLabel.font = UIFont.systemFont(ofSize: 50, weight: .thin)
        
        coinView.backgroundColor = .tertiaryLabel
        
        coinSignImageView.image = UIImage(systemName: "bitcoinsign.circle.fill")
        coinSignImageView.tintColor = UIColor(named: "IconColour")
        coinSignImageView.contentMode = .scaleAspectFit
        
        coinViewStack.spacing = 10
        coinViewStack.alignment = .center
        coinViewStack.distribution = .fill
        coinViewStack.contentMode = .scaleToFill
        
        countLabel.textColor = .white
        countLabel.font = UIFont.systemFont(ofSize: 25)
        countLabel.text = "..."
        countLabel.textAlignment = .right
        
        currencyLabel.text = "USD"
        currencyLabel.textColor = .white
        currencyLabel.font = UIFont.systemFont(ofSize: 25)
        
        
        
        
        
        pickerView.snp.makeConstraints{ make in
            make.left.right.bottom.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(216)
            
        }
        
        topStack.snp.makeConstraints{ make in
            make.trailing.leading.equalTo(view.safeAreaLayoutGuide)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
        }
        
        coinView.snp.makeConstraints{ make in
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(80)
        }
        
        coinViewStack.snp.makeConstraints{ make in
            make.trailing.equalToSuperview().inset(10)
            make.top.bottom.leading.equalToSuperview()
        }
        
        coinSignImageView.snp.makeConstraints{ make in
            make.size.width.equalTo(80)
        }
        
        
    }
}

#Preview{CoinViewController()}


