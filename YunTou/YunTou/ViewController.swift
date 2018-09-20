//
//  ViewController.swift
//  YunTou
//
//  Created by grx on 2018/9/19.
//  Copyright © 2018年 grx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建一个常规的button
        let button = UIButton(type:.custom)
        button.frame = CGRect(x:80, y:300, width:200, height:50)
        button.setTitle("跳转到React Native页面", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        //无参数点击事件
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    //无参数点击事件
    @objc func buttonClick(){
        let rnController = RNViewController()
        self.present(rnController, animated: true, completion: nil)
    }
}

