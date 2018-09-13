//
//  KeyValueDemoViewController.m
//  TestDemo
//
//  Created by Liuyubo on 2018/7/25.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "KeyValueDemoViewController.h"
#import "Person.h"
#import "MJExtension.h"
#import "YYModel.h"

@interface KeyValueDemoViewController ()

@end

@implementation KeyValueDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *oriDic = @{@"name":@"liuyubo",@"address":@"Yanan",@"choose":@(NO)};
    NSMutableDictionary *mutableDic = [oriDic mutableCopy];
    [mutableDic setObject:@[@"kobe",@"james"] forKey:@"name"];
    NSLog(@"mutableDic = %@",mutableDic);
    Person *oriPerson = [Person yy_modelWithDictionary:oriDic];
    
//    Person *person = [[Person alloc] init];
//    person.name = @"adfa";
//    person.address = @"address";
    NSDictionary *dic = [oriPerson mj_keyValues];
    NSLog(@"dic = %@",dic);
    NSDictionary *yyDic = [oriPerson yy_modelToJSONObject];
    NSLog(@"yydic = %@",yyDic);
    
    NSInteger time = ceil(800/60.f);
    NSLog(@"time = %ld",time);
    NSInteger minu = 0;
    minu =14.345;
    NSLog(@"minu = %ld",minu);
}


@end
