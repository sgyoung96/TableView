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
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yy-MM-dd HH:mm:ss"
        
        // 클래스 바깥에서 선언했기 때문에 바로 접근 가능
        if seq.count == 0 {
            seq.append(1)
            text.append(txtText.text!)
            time.append(formatter.string(from: date as Date))
        } else {
            seq.append(seq.last! + 1)
            text.append(txtText.text!)
            time.append(formatter.string(from: date as Date))
        }
        
        // 텍스트필드 값 초기화
        txtText.text = ""
        
        // 초기화면으로
        // .storyboard 파일의 이름
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        // 해당 스토리보드 파일의 스토리보드 아이디
        let mainView = mainStoryboard.instantiateViewController(identifier: "nav")
        mainView.modalPresentationStyle = .overCurrentContext
        self.present(mainView, animated: false, completion: nil)
        
        // 팝업창 사라짐
        let popUp: PopUpViewController = PopUpViewController()
        popUp.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnClose(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
