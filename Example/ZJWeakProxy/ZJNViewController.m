//
//  ZJNViewController.m
//  ZJWeakProxy_Example
//
//  Created by Mac on 2023/2/27.
//  Copyright © 2023 13718004742. All rights reserved.
//

#import "ZJNViewController.h"
#import <ZJWeakProxy.h>

@interface ZJNViewController ()
@property (nonatomic,strong)NSTimer * timer;
@end

@implementation ZJNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    
    // 第一种方式：self对定时器强引用，定时器对block强引用，block对self弱引用，不产生循环引用
//    __weak typeof(self) weakSelf = self;
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        [weakSelf timerTest];
//    }];
    
    // 第二种方式
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[ZJWeakProxy proxyWithTarget:self] selector:@selector(timerTest) userInfo:nil repeats:YES];
}

- (void)timerTest{
    NSLog(@"1");
}

#pragma mark -dealloc
- (void)dealloc{
    NSLog(@"%s",__FUNCTION__);
    [self.timer invalidate];
    self.timer = nil;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
