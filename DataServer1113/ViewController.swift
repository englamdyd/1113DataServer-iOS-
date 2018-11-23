//
//  ViewController.swift
//  DataServer1113
//
//  Created by 503-16 on 2018. 11. 13..
//  Copyright © 2018년 the. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBAction func moveInput(_ sender: Any) {
        //Storyboard 에 디자인 한 뷰 컨트롤러 클래스의 객체를 생성
        let inputViewController = self.storyboard?.instantiateViewController(withIdentifier: "InputViewController")
        //트랜지션 애니메이션 설정
        inputViewController?.modalTransitionStyle = .coverVertical
        //화면에 출력
        self.present(inputViewController!, animated: true, completion: nil)
    }
    //뷰가 화면애 보여질 때 호출되는 메소드
    override func viewDidAppear(_ animated: Bool) {
        //상위 클래스의 메소드를 호출
        super.viewDidAppear(animated)
        
        //AppDelegate 클래스의 인스턴스에 대한 참조 가져오기
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        lblName.text = appDelegate.name
        
        //UserDefaults 객체에 대한 참조 가져오기
        let userDefaults = UserDefaults.standard
        if let shareText = userDefaults.string(forKey: "email"){
            lblEmail.text = shareText
                       }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

