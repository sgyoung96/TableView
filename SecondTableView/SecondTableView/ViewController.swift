//
//  ViewController.swift
//  SecondTableView
//
//  Created by Gayeong on 2021/04/26.
//

import UIKit

class ViewController: UITableViewController {
    
    // 테이블 뷰
    @IBOutlet var tvListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }

    // 섹션의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 열의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seq.count
    }
    
    // 셀의 디자인 리턴
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        cell.lblSeq.text = String(seq[(indexPath as NSIndexPath).row])
        cell.lblText.text = text[(indexPath as NSIndexPath).row]
        cell.lblTime.text = time[(indexPath as NSIndexPath).row]
        
        return cell
    }
    
    // 목록 삭제하기
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            seq.remove(at: (indexPath as NSIndexPath).row)
            
            // seq안의 요소의 개수에 해당하는 수만큼 1부터 삽입
            for i in 0...seq.count - 1 {
                arr.insert(i + 1, at: 0)
            }
            seq = arr
            seq.sort()
            
            text.remove(at: (indexPath as NSIndexPath).row)
            time.remove(at: (indexPath as NSIndexPath).row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            // 새로고침
            tableView.reloadData()
        }
    }
    
    // Delete 문자 한글로 수정하기
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }
    
    // 우상단 + 버튼 클릭시 팝업화면 띄우기(뷰컨트롤러에 투명도 주어서 새로운 뷰컨트롤러 띄움)
    @IBAction func btnPopUp(_ sender: UIButton) {
        // .storyboard 파일의 이름
        let popUpStoryboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        // 해당 스토리보드 파일의 스토리보드 아이디
        let popUp = popUpStoryboard.instantiateViewController(identifier: "popUp")
        popUp.modalPresentationStyle = .overCurrentContext
        self.present(popUp, animated: false, completion: nil)
    }
    
}

