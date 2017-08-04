//
//  TangQiao_ViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/8/2.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "TangQiao_ViewController.h"

//static NSArray * getTableViewRowArray(){
//    return @[@"数组",@""];
//}

@interface TangQiao_ViewController ()

@end

@implementation TangQiao_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpTableView];
}




-(void)safeDictionary{
    NSString * firstString ;
    NSString * secondString = @"hahha";
    NSArray * array ;
    NSMutableDictionary * mutdic = [[NSMutableDictionary alloc] init];
    [mutdic setObject:firstString forKey:@"1"];
    [mutdic setObject:secondString forKey:@"2"];
    //    NSDictionary * dict = @{@"1":firstString,@"2":secondString,@"array":array};
    NSLog(@" %@",mutdic);
    NSNull * null = [NSNull null];
    NSObject * obje = [[NSObject alloc] init];
}






@end

/*
 平台安全
 1 芯片安全
 Apple Public Key -> Low-Level Bootloader (LLB)->iBoot -> Kernel-> iOS
 
 PublicKey 不可以伪造
 设备的每次升级 都需要苹果的独立认证
 越狱机降级操作系统需要备份苹果的认证
 
 2 数据保护
 将加密内容和硬件信息同时共同生成加密密钥
 iOS8 Bug 断掉电源 重启 （暴力破解）
 3 Sandbox 沙盒保护 所有权限获得都需要经过用户同意
 4 code signing  包括整个系统，以及所有的应用，都在code signing 的检查下运行
 5 Touch ID 指纹解锁（一个用户每天解锁手机次数80次）
 sensor （指纹采集器）  secureEnclave（安全模块） （指纹手机全部是在硬件上进行的），软件上是隔绝的
 
 TouchID 可以被开发者使用
 AppTransport Security
 使用TLSv 1.2 以上的安全协议
 
 */
/*
 HTTPS HTTP
 */

/*
 软件升级
 */

/*
 二 ： 开发中的安全
 
 */


