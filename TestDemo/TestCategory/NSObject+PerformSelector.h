//
//  NSObject+PerformSelector.h
//  TestDemo
//
//  Created by yubo liu on 2018/9/20.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PerformSelector)

- (id)performSelector:(SEL)aSelector withObjects:(NSArray *)objects;

@end
