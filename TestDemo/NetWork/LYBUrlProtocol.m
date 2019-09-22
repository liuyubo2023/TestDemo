//
//  LYBUrlProtocol.m
//  TestDemo
//
//  Created by yubo liu on 2019/4/30.
//  Copyright © 2019 Liuyubo. All rights reserved.
//

#import "LYBUrlProtocol.h"

static NSString *const URLProtocolHandledKey = @"URLProtocolHandledKey";

@implementation LYBUrlProtocol

+ (BOOL)canInitWithRequest:(NSURLRequest *)request {
    NSString *scheme = request.URL.scheme;
    if ([scheme caseInsensitiveCompare:@"https"] == NSOrderedSame) {
        if ([NSURLProtocol propertyForKey:URLProtocolHandledKey inRequest:request]) {
            return NO;
        }
        return YES;
    }
    return NO;
}

+ (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request {
    return request;
}

@end
