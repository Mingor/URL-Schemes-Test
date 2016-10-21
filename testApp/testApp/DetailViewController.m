//
//  DetailViewController.m
//  testApp
//
//  Created by hqmac2 on 2016/10/20.
//  Copyright © 2016年 Mingor. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我是详情页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lab = ({
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 84, 200, 20)];
        label.text = [NSString stringWithFormat:@"missionId=%@", self.missionId];
        label;
    });
    
    [self.view addSubview:lab];
}



@end
