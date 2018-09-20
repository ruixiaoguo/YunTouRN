//
//  RNBridgeModule.swift
//  YunTou
//
//  Created by grx on 2018/9/19.
//  Copyright © 2018年 grx. All rights reserved.
//

import UIKit
@objc(RNBridgeModule) //@objc关键字,用于将方法或对象暴露给OC,以供OC调用访问
class RNBridgeModule: NSObject {
    @objc func backToViewController() -> Void {
        //通知传值
        NotificationCenter.default.post(name: NSNotification.Name("jumpToBackController"), object: self, userInfo: ["post":"NewTest"])
    }
       //RN向原生传值
    @objc func addEvent(_ name: String) -> Void {
        print("RN向原生传值====\(name)")
    }
}
