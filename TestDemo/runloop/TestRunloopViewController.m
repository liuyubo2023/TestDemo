//
//  TestRunloopViewController.m
//  TestDemo
//
//  Created by yubo liu on 2018/9/14.
//  Copyright © 2018年 Liuyubo. All rights reserved.
//

#import "TestRunloopViewController.h"
@interface TestRunloopViewController ()

@property(nonatomic,strong) NSThread *myThread;

@end

@implementation TestRunloopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"alwaysLiveBackGoundThread");
    [self alwaysLiveBackGoundThread];
}

- (void)alwaysLiveBackGoundThread{
    
    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(myThreadRun) object:@"etund"];
    self.myThread = thread;
    [self.myThread start];
    
}
- (void)myThreadRun{
    [[NSRunLoop currentRunLoop] addPort:[[NSPort alloc] init] forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
    NSLog(@"my thread run");
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@",self.myThread);
    [self performSelector:@selector(doBackGroundThreadWork) onThread:self.myThread withObject:nil waitUntilDone:NO];
}
- (void)doBackGroundThreadWork{
    
    NSLog(@"do some work %s",__FUNCTION__);
    
}

@end
