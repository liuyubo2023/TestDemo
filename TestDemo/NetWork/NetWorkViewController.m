//
//  NetWorkViewController.m
//  TestDemo
//
//  Created by yubo liu on 2019/4/30.
//  Copyright © 2019 Liuyubo. All rights reserved.
//

#import "NetWorkViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface NetWorkViewController ()

@end

@implementation NetWorkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self request];
}

- (void)request {
    NSString *str1 = @"https://suggest.taobao.com/sug?code=utf-8&q=%E7%94%B5%E8%84%91";
    NSString *str2 = @"http://ip.taobao.com/service/getIpInfo.php?ip=63.223.108.42";
    NSURL *url = [NSURL URLWithString:str1];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
//    [[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSLog(@"%@",[self toJsonData:data]);
//    }] resume];
//    [[session dataTaskWithURL:[NSURL URLWithString:str1] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSLog(@"%@",[self toJsonData:data]);
//    }] resume];
    AFHTTPSessionManager *manage = [AFHTTPSessionManager manager];
    manage.requestSerializer = [AFHTTPRequestSerializer serializer];
    manage.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json", @"text/json", nil];
    [manage GET:str1 parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

    }];
}

- (NSDictionary *)toJsonData:(id)theData{
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:theData options:NSJSONWritingPrettyPrinted error:nil];
//    NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSDictionary *dictionary =[NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves error:nil];
//    if (jsonData.length > 0) {
//        return jsonStr;
//    }else{
//        return nil;
//    }
    return dictionary;
}

@end
