//
//  FontViewController.m
//  iOSPro
//
//  Created by Alpha on 2017/6/1.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "FontViewController.h"
#import "ZMChineseConvert.h"

/*
 安卓开发简繁体字需要引用一个jar包
 安卓也支持ttf 字体文件 
 */

@interface FontViewController ()

/**
 *  转换前的文字
 */
@property (weak, nonatomic) IBOutlet UILabel *fanLable;

/**
 * 转换后的文字
 */
@property (weak, nonatomic) IBOutlet UILabel *jianLabel;

- (IBAction)changeToJian:(id)sender;

- (IBAction)changeToFan:(id)sender;

@end

@implementation FontViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)getFont
{
    for(NSString *fontFamilyName in [UIFont familyNames])
    {
        NSLog(@"family:'%@'",fontFamilyName);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontFamilyName])
        {
            NSLog(@"\tfont:'%@'",fontName);
        }
        NSLog(@"-------------");
    }
}

- (IBAction)changeToJian:(id)sender {
   _jianLabel.text =   [ZMChineseConvert convertTraditionalToSimplified:_fanLable.text];
}

/**
 *  将简体字转化为繁体字
 *
 *  @param sender <#sender description#>
 */
- (IBAction)changeToFan:(id)sender {
   _jianLabel.text =   [ZMChineseConvert convertSimplifiedToTraditional:_fanLable.text];
}

@end
