//
//  ViewController.m
//  MFButtonCustomStyleDemo
//
//  Created by XuMengFan on 16/9/20.
//  Copyright © 2016年 MF. All rights reserved.
//

#import "ViewController.h"
#import "MFButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 200, 50);
    [button setImage:[UIImage imageNamed:@"gougou.png"] forState:UIControlStateNormal];
    [button setTitle:@"正常按钮" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    MFButton *button1 = [MFButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 200, 200, 50);
    [button1 setImage:[UIImage imageNamed:@"gougou.png"] forState:UIControlStateNormal];
    [button1 setTitle:@"异常按钮" forState:UIControlStateNormal];
    button1.buttonStyle = MFButtonStyleImageUpTextUnder;
    button1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
