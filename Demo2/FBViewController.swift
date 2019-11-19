//
//  FBViewController.swift
//  Demo2
//
//  Created by Kao on 2019/11/19.
//  Copyright © 2019 Kao Che. All rights reserved.
//

import UIKit
import FacebookLogin


class FBViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func login(_ sender: UIButton) {
        let manager = LoginManager()
        //存取權限，publicProfile：不用特別要求就可取得
        //判斷result是不是成功的case
        manager.logIn(permissions: [.publicProfile], viewController: self) { (result) in
            if case LoginResult.success(granted: _, declined: _, token: _) = result{
                self.dismiss(animated: true, completion: nil)
                
            } else{
                print("error")
            }
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
