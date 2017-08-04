//
//  Base_ViewController.h
//  iOSProject
//
//  Created by Alpha on 2017/7/29.
//  Copyright © 2017年 STT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Base_ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

/** 表视图*/
@property (nonatomic, strong) UITableView *tableView;


-(void)setUpTableView;

@end
