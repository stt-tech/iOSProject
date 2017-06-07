//
//  MarkDownViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "MarkDownViewController.h"

#import <MMMarkdown/MMMarkdown.h>
@interface MarkDownViewController ()

- (IBAction)righAction:(UIBarButtonItem *)sender;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MarkDownViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)righAction:(UIBarButtonItem *)sender {
    // 可以将markdon语法转换成为html的
    //    NSString * path = [[NSBundle mainBundle] pathForResource:@"code" ofType:@"txt"];
    NSString * path = [[NSBundle mainBundle] pathForResource:@"article" ofType:@"txt"];
    NSURL * fileUrl = [NSURL fileURLWithPath:path];
    NSString * markdownStr = [NSString stringWithContentsOfURL:fileUrl encoding:NSUTF8StringEncoding error:nil];
    //    NSString * htmlString = [MMMarkdown HTMLStringWithMarkdown:markdownStr error:nil];
    NSString * htmlString = [MMMarkdown HTMLStringWithMarkdown:markdownStr extensions:MMMarkdownExtensionsGitHubFlavored error:nil];
    [_webView loadHTMLString:htmlString baseURL:nil];
}


@end
