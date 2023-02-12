//
//  ViewController.swift
//  AuthApp
//
//  Created by brubru on 23.12.2022.
//

import UIKit

//MARK: - AuthViewController
final class AuthViewController: UIViewController {
    
    //MARK: - Private Property
    private let registerTextField = RegisterTextField(placeholder: "Enter your password")

    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

//MARK: - Setting Views
private extension AuthViewController {
    func setupView() {
        view.backgroundColor = .systemCyan
        addSubViews()
        
        setupLayout()
    }
}

//MARK: - Setting
private extension AuthViewController {
    func addSubViews() {
        view.addSubview(registerTextField)
    }
}

//MARK: - Layout
private extension AuthViewController {
    func setupLayout() {
        registerTextField.translatesAutoresizingMaskIntoConstraints = false
        
        registerTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        registerTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    }
}
