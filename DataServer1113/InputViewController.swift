//
//  InputViewController.swift
//  DataServer1113
//
//  Created by 503-16 on 2018. 11. 13..
//  Copyright © 2018년 the. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBAction func back(_ sender: Any) {
        //텍스트 필드에 입력한 내용을 AppDelegate 와 Userdefaults에 저장하기
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.name = txtName.text!
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(txtEmail!.text, forKey: "email")
        
        //이전 뷰 컨트롤러에서 present 메소들 호출 한 경우 돌아가기
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Appdelegate 에 대한 참조 만들기
        var appDelegate = UIApplication.shared.delegate as!
        AppDelegate
        txtName.text = appDelegate.name
        
        //UserDefaults에 대한 참조 만들기
        var userDefaults = UserDefaults.standard
        if var email = userDefaults.string(forKey: "email"){
            txtEmail.text = email
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
