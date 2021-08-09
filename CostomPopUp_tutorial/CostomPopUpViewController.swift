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
    @IBOutlet weak var OpenORAEBtn: UIButton!
    @IBOutlet weak var InstarBtn: UIButton!
    
    var subscribeBtnCompletionClosure: (() -> Void)?
   
    var MyPopUpDelegate : PopUpDelegate?
    
    let URLS = [
        "https://www.instagram.com/hoon_1016/"  ,
        "http://3.37.124.193:8502/",
        "https://hoonney.tistory.com/category"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CostomPopUpViewController - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        SubscribeBtn.layer.cornerRadius = 10
        OpenORAEBtn.layer.cornerRadius = 10
        InstarBtn.layer.cornerRadius = 10
        
        //self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    
    @IBAction func onClickOpenWebPage(_ sender: UIButton) {
        debugPrint("CostomPopUpViewController - InstarBtnClicked() called")
        
        let tag = sender.tag
        debugPrint("tag: \(tag)")
        
        let url = URLS[tag]
        debugPrint("url: \(url)")
        
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "WebViewController") as! WebViewController
        vc.initialUrl = url //초기화할 주소를 넘겨줌
        
        
        debugPrint("self.navigationController?: \(self.navigationController)")
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    //MARK: - IBActions
//    @IBAction func InstarBtnClicked(_ sender: UIButton) {
//
//        let tag = sender.tag
//
//        let url = URLS[tag]
//
//        print("CostomPopUpViewController - InstarBtnClicked() called")
////        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationName), object: nil)
////        dismiss(animated: true, completion: nil)
//
//        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
//
//
//        let vc = storyboard.instantiateViewController(identifier: "WebViewController") as! WebViewController
//
//        vc.initialUrl = url
//
//        self.navigationController?.pushViewController(vc, animated: true)
//
//
//
//
//    }
//
//    @IBAction func onBgBtnClicked(_ sender: UIButton) {
//        print("CostomPopUpViewController - onBgBtnClicked() called")
//        self.dismiss(animated: true, completion: nil)
//
//
//    }
//
//
//        //print("CostomPopUpViewController - onSubscribeBtnClicked() called")
//
//    @IBAction func onSubscribeBtnClicked(_ sender: UIButton) {
//    self.dismiss(animated: true, completion: nil)
//        // 컴플레션 블록 호출
//        if let subscribeBtnCompletionClosure = subscribeBtnCompletionClosure{
//            // 메인이 알린다.
//            subscribeBtnCompletionClosure()
//        }
//    }
//
//    @IBAction func onORAEBtnClicked(_ sender: UIButton) {
//        print("CostomPopUpViewController - onORAEBtnClicked() called")
//        MyPopUpDelegate?.onORAEBtnClicked()
//        self.dismiss(animated: true, completion: nil)
//    }
    
}
