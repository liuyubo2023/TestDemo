//
//  ViewController.m
//  TestDemo
//
//  Created by Liuyubo on 2018/5/27.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "ViewController.h"
#import "TableViewOffsetViewController.h"
#import "WkWebViewViewController.h"
#import "KeyValueDemoViewController.h"
#import "TestChildViewController.h"


@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad");
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
//    tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    NSString *a = @"a";
    NSString *o = [a copy];
    NSString *b = @"a";
    NSString *c = [NSString stringWithString:a];
    NSString *d = [NSString stringWithFormat:a];
    NSString *e = [[NSString alloc] initWithFormat:a];
//    NSMutableString *c = [a mutableCopy];
//    NSMutableString *d = [a mutableCopy];
    NSString *ud = [NSString stringWithFormat:@"asdfhaksfhjkashkhfakskhf"];
    NSString *uc = [NSString stringWithFormat:@"asdfhaksfhjkashkhfakskhf"];
    NSMutableString *i = [NSMutableString stringWithFormat:@"b"];
    NSMutableString *u = [NSMutableString stringWithFormat:@"b"];
    NSMutableString *m = [NSMutableString stringWithString:a];
    NSMutableString *n = [NSMutableString stringWithString:a];
    char *q = "a";
    char *r = "a";
    
    NSNumber *number1 = @1;
    NSNumber *number2 = @2;
    NSNumber *number3 = @3;
    NSNumber *number4 = @3;
    
    int gh = 4;
    int gu = 4;
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:0];
    
    NSLog(@"number1 pointer is %p", number1);
    NSLog(@"number2 pointer is %p", number2);
    NSLog(@"number3 pointer is %p", number3);
    NSLog(@"number4 pointer is %p", number4);
    
    NSLog(@"date pointer is %p", date);
    
    NSLog(@"dsf");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

- (void)viewSafeAreaInsetsDidChange{
    [super viewSafeAreaInsetsDidChange];
    if (@available(iOS 11.0, *)) {
        NSLog(@"safeAreaInset list= %@",NSStringFromUIEdgeInsets(self.view.safeAreaInsets));
        NSLog(@"safeAreaLayout list= %@",self.view.safeAreaLayoutGuide);
    }
}

static void lxdRunLoopObserverCallback(CFRunLoopObserverRef observer, CFRunLoopActivity activity, void * info) {
    switch (activity) {
        case kCFRunLoopEntry:
            NSLog(@"runloop entry");
            break;
            
        case kCFRunLoopExit:
            NSLog(@"runloop exit");
            break;
            
        case kCFRunLoopAfterWaiting:
            NSLog(@"runloop after waiting");
            break;
            
        case kCFRunLoopBeforeTimers:
            NSLog(@"runloop before timers");
            break;
            
        case kCFRunLoopBeforeSources:
            NSLog(@"runloop before sources");
            break;
            
        case kCFRunLoopBeforeWaiting:
            NSLog(@"runloop before waiting");
            break;
            
        default:
            break;
    }
};

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 14;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld行",indexPath.row + 1];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            TableViewOffsetViewController *vc = [[TableViewOffsetViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 1: {
            WkWebViewViewController *vc = [[WkWebViewViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 2: {
            KeyValueDemoViewController *vc = [[KeyValueDemoViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 3: {
            TestChildViewController *vc = [[TestChildViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        default:
            break;
    }
}

@end
