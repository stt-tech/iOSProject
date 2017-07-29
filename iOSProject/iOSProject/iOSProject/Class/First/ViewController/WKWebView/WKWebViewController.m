//
//  WKWebViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/7/29.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "WKWebViewController.h"

#import <WebKit/WebKit.h>

@interface WKWebViewController () <WKUIDelegate,WKNavigationDelegate>


@property (nonatomic, strong) WKWebView *webView;
@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatWKWebView];
}

-(void)creatWKWebView
{
    WKWebViewConfiguration * config = [[WKWebViewConfiguration alloc] init];
    config.processPool = [[WKProcessPool alloc] init];
    WKPreferences * prefer = [[WKPreferences alloc] init];
    prefer.javaScriptEnabled = YES;
    prefer.javaScriptCanOpenWindowsAutomatically = YES;
    config.preferences = prefer;
    self.webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:config];
    self.webView.allowsBackForwardNavigationGestures = YES;
    [self.view addSubview:self.webView];
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    [self.webView loadRequest:request];
    self.webView.UIDelegate = self;
    self.webView.navigationDelegate = self;
    
}


- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    NSLog(@"webview开始请求");
    decisionHandler(WKNavigationActionPolicyAllow);
}
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    NSLog(@"webView开始加载");
}
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {
    NSLog(@"webview开始收到响应");
    decisionHandler(WKNavigationResponsePolicyAllow);
}

//-----------------显示开始加载html CSS js 和图片资源等（JS引擎单线程顺序执行）---------------

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    NSLog(@"1");
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    NSLog(@"webview结束加载内容");
}
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"webview加载失败");
}
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation{
    NSLog(@"开始重定向的函数");
}
- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential *))completionHandler
{
    NSLog(@"2");
    completionHandler(NSURLSessionAuthChallengePerformDefaultHandling, nil);
}


@end

// // 使用下划线 访问 和使用 点语法访问的区别
