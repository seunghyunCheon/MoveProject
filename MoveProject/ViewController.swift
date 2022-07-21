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
        firstVC.someString = "passingData"
        
        present(firstVC, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController {
            secondVC.someString = "passData"
            //secondVC.mainlable -> 접근 불가. 이유: 현재 viewController인스턴스만 생성이 된 상태이고 스토리보드 인스턴스는 생성되었지만 연결은 되지않은 상태. present이후 viewDidload시점이 연결이 다 된 상태이므로 그때 실행해야 함.
            present(secondVC, animated: true, completion: nil)
        }
    }
    
    
    
    @IBAction func thirdButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdView" {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.someString = "passdata3"
        }
        
        if segue.identifier == "toFourView" {
            let fourVc = segue.destination as! FourViewController
            fourVc.someString = "데이터전달"
        }
    }
    
    
    
    
    

}

