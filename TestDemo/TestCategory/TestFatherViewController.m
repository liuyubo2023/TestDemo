//
//  TestFatherViewController.m
//  TestDemo
//
//  Created by Liuyubo on 2018/9/13.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "TestFatherViewController.h"
#import "TestFatherViewController+print.h"

@interface TestFatherViewController ()
@property (nonatomic, strong) NSString *name;
@end

@implementation TestFatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)reloadData {
    self.name = [self print];
    NSLog(@"name = %@",self.name);
    NSLog(@"dev 1");
    NSLog(@"dev 2");
}

- (NSString *)print {
    return @"TestFatherViewController";
}

@end
