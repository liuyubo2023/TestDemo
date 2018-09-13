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
    
    [self reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)print {
    return @"TestChildViewController";
}

@end
