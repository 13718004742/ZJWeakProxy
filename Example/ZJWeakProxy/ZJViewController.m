//
//  ZJViewController.m
//  ZJWeakProxy
//
//  Created by 13718004742 on 02/27/2023.
//  Copyright (c) 2023 13718004742. All rights reserved.
//

#import "ZJViewController.h"

#import "ZJNViewController.h"

@interface ZJViewController ()
@property (nonatomic,strong)UIButton * nextBtn;
@end

@implementation ZJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    self.nextBtn.backgroundColor = [UIColor redColor];
    [self.nextBtn setTitle:@"Next" forState:UIControlStateNormal];
    [self.nextBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    self.nextBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:self.nextBtn];
    [self.nextBtn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickBtn{
    ZJNViewController * nextVC = [ZJNViewController new];
    [self presentViewController:nextVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
