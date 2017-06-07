//
//  CSAnimationTableViewController.m
//  iOSPro
//
//  Created by Alpha on 2017/6/2.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "CSAnimationTableViewController.h"
#import "Canvas.h"

@interface CSAnimationTableViewController ()

@end

@implementation CSAnimationTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.view startCanvasAnimation];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell startCanvasAnimation];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [cell startCanvasAnimation];
    cell.backgroundColor = [UIColor clearColor];
}



@end
