//
//  HomeScreen.swift
//  DesafioViewCodeProtocol
//
//  Created by Eduardo on 23/02/26.
//

import UIKit

protocol HomeScreenDelegate: AnyObject {
    func tapedReturnButton()
    
}

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenDelegate?

    lazy var homeLabel: UILabel = {
        let label = UILabel()
        label.text = "HOME"
        label.font = UIFont.systemFont(ofSize: 30)
        label.tintColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var returnButton: UIButton = {
        let button =  UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sair", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = UIColor.black
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapReturnButton), for: .touchUpInside)
        return button
    }()
    
    @objc func didTapReturnButton(){
        delegate?.tapedReturnButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        addConstraints()
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(homeLabel)
        addSubview(returnButton)
    }
    
    func addConstraints(){
        NSLayoutConstraint.activate([
       
            homeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            homeLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            returnButton.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 50),
            returnButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            returnButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20)
            
        ])
    }
}
