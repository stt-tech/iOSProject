//
//  RSAViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/6/12.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "RSAViewController.h"
#import "RSAEncryptor.h"

@interface RSAViewController ()

@end

@implementation RSAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self firstTest];
//    [self secondTest];
    
}

-(void)firstTest{
    //原始数据
    //原始数据
    NSString *originalString = @"这是一段将要使用'秘钥字符串'进行加密的字符串!";
    
    //使用字符串格式的公钥私钥加密解密
    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKey:@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCKMpDa/Vepbr/hRaTiYbJ2LDxCbdCb+b0+DQg8EMgBoWt7qs0JJ6N7NzKJqojS61Oh7aq8n9a2EoG9NcUJOjNLT6ZjzSpamjY5QFg1qGVFqQy/hfUU2mbsj/9X4khnEDOpT/pD+mZbXOy6H9PgYGu84VPDGEsm/vNQIhAd+RFbNwIDAQAB"];
    
    NSLog(@"第一次 加密前:%@", originalString);
    NSLog(@"第一次 加密后:%@", encryptStr);
    NSLog(@"第一次 解密后:%@", [RSAEncryptor decryptString:encryptStr privateKey:@"MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAIoykNr9V6luv+FFpOJhsnYsPEJt0Jv5vT4NCDwQyAGha3uqzQkno3s3MomqiNLrU6Htqryf1rYSgb01xQk6M0tPpmPNKlqaNjlAWDWoZUWpDL+F9RTaZuyP/1fiSGcQM6lP+kP6Zltc7Lof0+Bga7zhU8MYSyb+81AiEB35EVs3AgMBAAECgYAGux/DCsPSRMqjtjiprgh7KPxmX+LhNfC5rPjRtB+JtMr/YvpJj9yui6myetPfMgcIxAKk3UQf6hbXmF7YbDVDS2z+pGDo34nRxIRvyb9BGOEOWeEmZqpIqy/T4zEnr6zW6C4mP6br4YlIYEUO76a8HKVfaY+pCJvTu0IBhOqMgQJBAMYZjvKQiim6QCW5QPyvoSQzSNsD2VLYkIL019MchQIOOP6uVha8wvbcwwo59WFQAkD/bukUjvHidRILnN9/s0kCQQCylu5obmfSbwlHCR3hChs0ee0hCZdLML0i0NSCQXd7f2CEOCpgXFHJGMtUryeSOPDkOGoVn5vhDAQy2H36chp/AkB7F1J9YlaXSwWk6xF4cWD9b2hrvl6BXdOdq6mXofb7qf68MXOIuU2jutTuO8k+6EoePRmbdozDu+Tmi5S0Q1MRAkBayAJUr5qzC6Jpq6a2mE6P9FKn8ponrJTYN9NuixzTeEJ1s59G8GbalHH3kDnLSIqbWFoEt+ejFFqmBgqz3oC9AkAk/xUvMv+Hiaz2XvOPgfCs9SzsXn9+HI4tVqFvnPRYs3Pr2lGRKNQVQ5aoiXn4dtqc2DU/epTmGsuxXf9MeXqf"]);

}

// 使用
-(void)secondTest{
    //原始数据
    NSString *originalString = @"这是一段将要使用'.der'文件加密的字符串!";
    //使用.der和.p12中的公钥私钥加密解密
    NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"m_public_key.der" ofType:nil];
    NSString *private_key_path = [[NSBundle mainBundle] pathForResource:@"m_private_key.p12" ofType:nil];
    
    
    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKeyWithContentsOfFile:public_key_path];
    NSLog(@"加密前:%@", originalString);
    NSLog(@"加密后:%@", encryptStr);
    NSLog(@"解密后:%@", [RSAEncryptor decryptString:encryptStr privateKeyWithContentsOfFile:private_key_path password:@"1"]);
    
}

@end
