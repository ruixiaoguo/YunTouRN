//
//  Bridge.m
//  YunTou
//
//  Created by grx on 2018/9/19.
//  Copyright © 2018年 grx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
typedef void (^RCTResponseSenderBlock)(NSArray *response);

@interface RCT_EXTERN_MODULE(RNBridgeModule, NSObject) //RCT_EXTERN_MODULE将模块导出到Reac-Native

RCT_EXTERN_METHOD(backToViewController)  //RCT_EXTERN_METHOD将方法导出到ReacNative
RCT_EXTERN_METHOD(addEvent:(NSString *)name)

@end

