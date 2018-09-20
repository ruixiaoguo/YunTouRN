//
//  RNViewController.swift
//  YunTou
//
//  Created by grx on 2018/9/19.
//  Copyright © 2018年 grx. All rights reserved.
//

import UIKit
class RNViewController: UIViewController {

    override func viewDidLoad() {
        let wjyprops:[String:String] = ["name":"原生传值到RN页面"];
        super.viewDidLoad()
        let strUrl = "http://127.0.0.1:8081/index.bundle?platform=ios&dev=true"
        let jsCodeLocation = NSURL(string: strUrl)
        let rootView: RCTRootView = RCTRootView(bundleURL:jsCodeLocation! as URL, moduleName: "testRN", initialProperties:wjyprops, launchOptions: nil)
        rootView.backgroundColor = UIColor.white
        self.view = rootView;
        NotificationCenter.default.addObserver(self, selector: #selector(jumpToBackController), name: NSNotification.Name(rawValue:"jumpToBackController"), object: nil)
    }
    
    @objc func jumpToBackController(nofi : Notification) {
        let str = nofi.userInfo!["post"]
        print(String(describing: str!) + "this notifi")
        self.dismiss(animated: true, completion: nil)
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
