//
//  TableViewOffsetViewController.m
//  TestDemo
//
//  Created by Liuyubo on 2018/5/27.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "TableViewOffsetViewController.h"

@interface TableViewOffsetViewController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation TableViewOffsetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 164, self.view.bounds.size.width, self.view.bounds.size.height - 264)];
    tableView.delegate = self;
    tableView.dataSource = self;
    //放在上面是起作用的
    tableView.contentInset = UIEdgeInsetsMake(20, 0, 20, 0);
    tableView.contentOffset = CGPointMake(300, 100);
    //放在下面就不起作用了
//    tableView.contentInset = UIEdgeInsetsMake(20, 0, 20, 0);
    [self.view addSubview:tableView];
}

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
        default:
            break;
    }
}

@end
