
//
//  Programe_ViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/7/29.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "Programe_ViewController.h"
#import "PersonModel.h"
#import "NSDictionary+Log.h"

#define  TLog(_var) ({NSString * name = @#_var;NSLog(@"%@ : %@ -> %p :%@ %ld",name,[_var class],_var,_var,CFGetRetainCount((__bridge CFTypeRef)_var));})

#define  SLog(_var) ({NSString * name = @#_var;NSLog(@"%@ : %@ -> %p :%@ %ld",name,[_var class],_var,_var,[_var retainCount]);})


@interface Programe_ViewController ()

@property (nonatomic, strong) NSMutableArray  *strongArray;

@property (nonatomic, copy) NSMutableArray *mcopyArray;

@end

@implementation Programe_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"语法测试";
    
//    [self stringTest];
    
}

-(void)stringTest{
    
    
    //    _mcopyArray = [[NSMutableArray alloc] init];
    //    _strongArray = [[NSMutableArray alloc] init];
    //
    //    PersonModel * model = [[PersonModel alloc] init];
    //    model.name = @"kaixin";
    //    model.age = @"10";
    //
    ////    NSLog(@"我是log的 personModel --- %@ --- %@",model,[model description]);
    //    for (int i=0; i<3; i++) {
    //        [_mcopyArray addObject:model];
    //        [_strongArray addObject:model];
    //    }
    //
    //    NSString * string = @"hahhah ";
    //    TLog(string);
    //    NSString * string2 = [NSString stringWithFormat:@"12388434"];
    //    TLog(string2);
    //    NSString * string3 = [NSString stringWithString:@"hahhahah"];
    //    TLog(string3);
    //    NSMutableString * mutString = [NSMutableString stringWithString:@"我是猫猫"];
    //    TLog(mutString);
    //    string = mutString;
    //    //    OBJC_EXTERN int _objc_rootRetainCount(id);
    //    //    _objc_rootRetainCount(string);
    //
    //    NSNumber *number1 = [NSNumber numberWithInt:2];
    //    TLog(number1);
    
    
    //    NSString *  s_string1 = @"aaa";
    //    SLog(s_string1);
    //    NSString * s_string2 = [s_string1 retain];
    //    SLog(s_string2);
    //    NSString * s_string3 = [s_string1 copy];
    //    SLog(s_string3);
    //    NSString * s_string4 = [s_string1 mutableCopy];
    //    SLog(s_string4);
    
    NSString *  s_string1 = [@"aaa" mutableCopy];
    SLog(s_string1);
    NSString * s_string2 = [s_string1 retain];
    SLog(s_string2);
    NSString * s_string3 = [s_string1 copy];
    SLog(s_string3);
    NSString * s_string4 = [s_string1 mutableCopy];
    SLog(s_string4);
}


//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"====== touchesBegan copy array %@ ==== strong Array %@",_mcopyArray,self.strongArray);
//}
//
//-(void)dealloc
//{
//    NSLog(@"====== log copy array %@ ==== strong Array %@",_mcopyArray,_strongArray);
//}


@end
