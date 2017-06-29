//
//  Third_TableViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/6/23.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "Third_TableViewController.h"



static NSArray * getTableViewDataArray(){
    return @[@"ASDKgram"];
}

static NSArray *getVCArray(){
    return @[@"Gif_ViewController"];
}

static NSString * const cellID = @"cellID";
@interface Third_TableViewController ()

@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation Third_TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    self.dataArray = getTableViewDataArray();
}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.dataArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLabel.text = getTableViewDataArray()[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self pushToNextViewController:getVCArray()[indexPath.row]];
}

-(void)pushToNextViewController:(NSString *)controller
{
    Class class = NSClassFromString(controller);
    UIViewController * vc = (UIViewController *)[[class alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}



@end
