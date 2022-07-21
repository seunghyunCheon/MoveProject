//
//  SecondViewController.swift
//  MoveProject
//
//  Created by 천승현 on 2022/07/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    @IBOutlet weak var mainLabel: UILabel!
    

    var someString: String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = someString

    }
    

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
