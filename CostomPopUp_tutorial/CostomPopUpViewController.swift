//
//  CostomPopUpViewController.swift
//  CostomPopUp_tutorial
//
//  Created by 임재훈 on 2021/08/04.
//

import UIKit

class CostomPopUpViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var SubscribeBtn: UIButton!
    
    var subscribeBtnCompletionClosure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CostomPopUpViewController - viewDidLoad() called")
        
        contentView.layer.cornerRadius = 30
        SubscribeBtn.layer.cornerRadius = 10
    }
    
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("CostomPopUpViewController - onBgBtnClicked() called")
        self.dismiss(animated: true, completion: nil)
    }
    
    
        //print("CostomPopUpViewController - onSubscribeBtnClicked() called")
        
    @IBAction func onSubscribeBtnClicked(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
        // 컴플레션 블록 호출
        if let subscribeBtnCompletionClosure = subscribeBtnCompletionClosure{
            // 메인이 알린다.
            subscribeBtnCompletionClosure()
        }
    }
}
