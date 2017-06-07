//
//  BaseTableViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

-(void)loadView
{
    [super loadView];
    [self initTableView];
}

-(void)initTableView{

    UITableView *talbeView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:talbeView];
    talbeView.delegate = self;
    talbeView.dataSource = self;
    _tableView = talbeView;
}
- (void)viewDidLoad {
    [super viewDidLoad];

}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  nil;
}
@end
