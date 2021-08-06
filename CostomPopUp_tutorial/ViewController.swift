//
//  ViewController.swift
//  CostomPopUp_tutorial
//
//  Created by 임재훈 on 2021/08/04.
//

import UIKit
import WebKit


class ViewController: UIViewController {
    
    @IBOutlet weak var MyWebView: WKWebView!
    @IBOutlet weak var CreatePopUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        
        print("ViewController - onCreatePopUpBtnClicked() called")
        
        //스토리 보드 가져오기
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        
        //스토리 보드를 통해 뷰컨트롤러 가져오기
        let customPopUpVC = storyboard.instantiateViewController(identifier: "AlertPopUpVC") as! CostomPopUpViewController
        // 뷰 컨트롤러가 보여주는 스타일
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        // 뷰 컨트롤러가 사라지는 스타일
        customPopUpVC.modalTransitionStyle = .crossDissolve
        
        customPopUpVC.subscribeBtnCompletionClosure = {
            print("컴플레션 블럭이 호출되었다.")
            let myChannelUrl = URL(string: "https://m.blog.naver.com/hmj8740")
            self.MyWebView.load(URLRequest(url: myChannelUrl!))
        }
        
        self.present(customPopUpVC, animated: true, completion: nil)
        
        
        
    }
    
}

