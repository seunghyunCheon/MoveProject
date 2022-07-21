//
//  ViewController.swift
//  MoveProject
//
//  Created by 천승현 on 2022/07/21.
//

import UIKit

class ViewController: UIViewController {


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        present(firstVC, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
    }
    
    
    
    @IBAction func thirdButtonTapped(_ sender: UIButton) {
    }
    
    
    
    
    

}

