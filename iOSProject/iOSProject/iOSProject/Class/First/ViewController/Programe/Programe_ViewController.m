
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

@interface Programe_ViewController ()

@property (nonatomic, strong) NSMutableArray  *strongArray;

@property (nonatomic, copy) NSMutableArray *mcopyArray;

@end

@implementation Programe_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"语法测试";
    _mcopyArray = [[NSMutableArray alloc] init];
    _strongArray = [[NSMutableArray alloc] init];
    
    PersonModel * model = [[PersonModel alloc] init];
    model.name = @"kaixin";
    model.age = @"10";
    
    NSLog(@"我是log的 personModel --- %@ --- %@",model,[model description]);
    for (int i=0; i<3; i++) {
        [_mcopyArray addObject:model];
        [_strongArray addObject:model];
    }
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"====== touchesBegan copy array %@ ==== strong Array %@",_mcopyArray,self.strongArray);
}

-(void)dealloc
{
    NSLog(@"====== log copy array %@ ==== strong Array %@",_mcopyArray,_strongArray);
}


@end
