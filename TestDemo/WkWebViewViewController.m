//
//  WkWebViewViewController.m
//  TestDemo
//
//  Created by Liuyubo on 2018/5/28.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "WkWebViewViewController.h"
#import <WebKit/WKWebView.h>
#import <WebKit/WKNavigationDelegate.h>

@interface WkWebViewViewController () <WKNavigationDelegate>

@property (nonatomic, strong) void (^testBlock)(void);

@end

@implementation WkWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.testBlock = ^{
        self.view.backgroundColor = [UIColor redColor];
    };
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    webView.navigationDelegate = self;
    NSURL *url = [NSURL URLWithString:@"https://www.hujiang.com"];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:webView];
}

//- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {}

//- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation {}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    NSLog(@"didCommitNavigation");
    
    [webView evaluateJavaScript:@"document.title" completionHandler:^(id _Nullable ret, NSError * _Nullable error) {
        self.title = ret;
    }];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation {}

@end
