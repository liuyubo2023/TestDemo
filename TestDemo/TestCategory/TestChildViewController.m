//
//  TestChildViewController.m
//  TestDemo
//
//  Created by Liuyubo on 2018/9/13.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "TestChildViewController.h"
#import "TestFatherViewController+print.h"

@interface TestChildViewController ()

@end

@implementation TestChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    [super reloadData];
    NSLog(@"add feature");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"master");
}

- (NSString *)print {
    return @"TestChildViewController";
}

@end
