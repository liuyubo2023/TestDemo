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
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)reloadData {
    self.name = [self print];
    NSLog(@"name = %@",self.name);
}

- (NSString *)print {
    return @"TestFatherViewController";
}

@end
