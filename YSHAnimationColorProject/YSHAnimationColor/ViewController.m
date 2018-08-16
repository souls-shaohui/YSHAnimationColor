//
//  ViewController.m
//  YSHAnimationColor
//
//  Created by TrojanVirus on 2018/8/16.
//  Copyright © 2018年 HuaTeng-Ysh. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AnimationColor.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *animationView = [[UIView alloc]init];
    animationView.frame = CGRectMake(80, 100, 200, 50);
    [animationView setAnimationBackgroundColors:@[[UIColor redColor],[UIColor orangeColor],[UIColor purpleColor]] locations:nil startPoint:CGPointMake(0, 1) endPoint:CGPointMake(1, 1)];
    [self.view addSubview:animationView];
    
    UILabel *animationLabel = [[UILabel alloc]init];
    animationLabel.backgroundColor = [UIColor clearColor];
    animationLabel.frame = CGRectMake(80, 180, 200, 50);
    animationLabel.text = @"这是一个label";
    animationLabel.font = [UIFont systemFontOfSize:15];
    animationLabel.textAlignment = NSTextAlignmentCenter;
    [animationLabel setAnimationBackgroundColors:@[[UIColor redColor],[UIColor orangeColor],[UIColor purpleColor]] locations:@[@0,@0.4,@0.8] startPoint:CGPointMake(1, 0) endPoint:CGPointMake(1, 1)];
    [self.view addSubview:animationLabel];
    
    UIButton *animationButton = [UIButton buttonWithType:UIButtonTypeCustom];
    animationButton.frame = CGRectMake(80, 250, 200, 50);
    [animationButton setTitle:@"button" forState:UIControlStateNormal];
    animationButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [animationButton setAnimationBackgroundColors:@[[UIColor redColor],[UIColor orangeColor],[UIColor purpleColor]] locations:@[@0,@0.5,@1] startPoint:CGPointMake(0, 1) endPoint:CGPointMake(1, 0)];
    [self.view addSubview:animationButton];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
