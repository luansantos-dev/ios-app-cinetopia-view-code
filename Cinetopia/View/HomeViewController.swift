//
//  ViewController.swift
//  Cinetopia
//
//  Created by Luan Santos on 27/06/24.
//

import UIKit

class HomeViewController: UIViewController {

    private lazy var logoImageView: UIImageView = {
        let image = UIImageView(image: .logo)
        image.translatesAutoresizingMaskIntoConstraints = false;
        return image
        
    }()
    
    private lazy var coupleImageView: UIImageView = {
        let image = UIImageView(image: .couple)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        label.textColor = .white
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var welcomeButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints =  false
        button.setTitle("Quero começar!", for: .normal)
        button.backgroundColor = .buttonBackground
        button.setTitleColor(.background, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 32
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        addSubView()
        configureConstraint()
    }
    
    private func addSubView() {
        view.addSubview(logoImageView)
        view.addSubview(coupleImageView)
        view.addSubview(welcomeLabel)
        view.addSubview(welcomeButton)
    }
    
    private func configureConstraint() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 64),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            coupleImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            coupleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            welcomeLabel.topAnchor.constraint(equalTo: coupleImageView.bottomAnchor, constant: 24),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            welcomeButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 24),
            welcomeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            welcomeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            welcomeButton.heightAnchor.constraint(equalToConstant: 68),
        ])
    }


}

