//
//  PopUpViewController.swift
//  SecondTableView
//
//  Created by Gayeong on 2021/04/26.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet var txtText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnOk(_ sender: UIButton) {
    }
    @IBAction func btnClose(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
