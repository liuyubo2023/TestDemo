//
//  TableViewOffsetViewController.m
//  TestDemo
//
//  Created by Liuyubo on 2018/5/27.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "TableViewOffsetViewController.h"

@interface TableViewOffsetViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, copy) NSArray *array;

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
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.array = @[@"hiasdf",@"hai",@"hai",@"hdfi",@"h324i",@"h234i",@"hig",@"hi",@"hi",@"hi",@"hi",@"hig",@"hi",@"hi",@"hi",@"hi"];
        [tableView reloadSections:[[NSIndexSet alloc] initWithIndex:0] withRowAnimation:UITableViewRowAnimationNone];
    });
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
//    cell.textLabel.text = [NSString stringWithFormat:@"第%ld行",indexPath.row + 1];
    cell.textLabel.text = self.array[indexPath.row];
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

- (NSArray *)array {
    if (!_array) {
        _array = @[@"1",@"2",@"3",@"4",@"5",@"7",@"8",@"9",@"10",@"11",@"12",@"1",@"2",@"3",@"4",@"5"];
    }
    return _array;
}

@end
