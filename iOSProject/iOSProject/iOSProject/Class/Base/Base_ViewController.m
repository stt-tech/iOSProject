
//
//  Base_ViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/7/29.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "Base_ViewController.h"

@interface Base_ViewController () 

@end

@implementation Base_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setUpTableView
{
    UITableView *tab = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:tab];
    _tableView = tab;
    tab.dataSource = self;
    tab.delegate = self;
    tab.backgroundColor = [UIColor colorWithRed:0.94f green:0.94f blue:0.94f alpha:1.00f];
    tab.showsVerticalScrollIndicator = NO;
    tab.showsHorizontalScrollIndicator = NO;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  nil;
}


@end
