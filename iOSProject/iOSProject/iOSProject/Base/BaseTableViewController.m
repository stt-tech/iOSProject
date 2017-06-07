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

-(instancetype)init
{
    if (self = [super init]) {
        
    }return  self;
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
    return  _dateArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  nil;
}
@end
