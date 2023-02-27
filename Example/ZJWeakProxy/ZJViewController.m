//
//  ZJViewController.m
//  ZJWeakProxy
//
//  Created by 13718004742 on 02/27/2023.
//  Copyright (c) 2023 13718004742. All rights reserved.
//

#import "ZJViewController.h"
#import <ZJWeakProxy.h>

@interface ZJViewController ()

@end

@implementation ZJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    ZJWeakProxy * proxy = [ZJWeakProxy alloc];
    [proxy printZJWeakProxy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
