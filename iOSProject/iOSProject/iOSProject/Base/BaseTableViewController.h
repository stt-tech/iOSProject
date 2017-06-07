//
//  BaseTableViewController.h
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseTableViewController : BaseViewController <UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_dateArray;
}

@end
