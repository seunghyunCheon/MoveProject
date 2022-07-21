//
//  FirstViewController.swift
//  MoveProject
//
//  Created by 천승현 on 2022/07/21.
//

import UIKit

class FirstViewController: UIViewController {
    
    let mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    let mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var someString: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        
        mainLabel.text = someString
        
        view.backgroundColor = .gray
        
        view.addSubview(mainLabel)
        view.addSubview(mainButton)
        autoLayoutSetUp()
    }
    
    func autoLayoutSetUp() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            mainButton.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 30),
            mainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainButton.heightAnchor.constraint(equalToConstant: 40),
            mainButton.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    @objc func backButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    

    

}
