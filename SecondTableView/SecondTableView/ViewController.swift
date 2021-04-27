//
//  ViewController.swift
//  SecondTableView
//
//  Created by Gayeong on 2021/04/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPopUp(_ sender: UIButton) {
        let popUpStoryboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        let popUp = popUpStoryboard.instantiateViewController(identifier: "popUp")
        popUp.modalPresentationStyle = .overCurrentContext
        self.present(popUp, animated: false, completion: nil)
    }
    
}

