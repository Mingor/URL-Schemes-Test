//
//  ViewControllerA.m
//  testApp
//
//  Created by hqmac2 on 2016/10/20.
//  Copyright © 2016年 Mingor. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我是首页";
    
    UIButton *btn = ({
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20, 84, 60, 20)];
        [button setTitle:@"详情页" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    
    [self.view addSubview:btn];
}

- (void)push {
    DetailViewController *detail = [DetailViewController new];
    detail.missionId = @"你猜";
    [self.navigationController pushViewController:detail animated:YES];
}

@end
