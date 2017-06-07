//
//  FastlimageTableViewCell.h
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FastlimageTableViewCell : UITableViewCell

@property (nonatomic, assign) BOOL usesImageTable;
@property (nonatomic, strong) NSArray *photos;

@property (nonatomic, copy) NSString *imageFormatName;

+ (NSString *)reuseIdentifier;
+ (NSInteger)photosPerRow;
+ (CGFloat)outerPadding;
+ (CGFloat)rowHeight;

@end
