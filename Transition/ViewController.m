//
//  ViewController.m
//  Transition
//
//  Created by 朱明灿 on 17/2/23.
//  Copyright © 2017年 张佳强. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UIViewController+XXTransition.h"
#import "XXTransition.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(80, 80, 40, 30);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)buttonClick:(UIButton *)button{
    SecondViewController * second = [[SecondViewController alloc]init];
    [self xx_presentViewController:second makeAnimatedTransitioning:^(XXAnimatedTransitioning * _Nonnull transitioning) {
        transitioning.duration = 0.5;
        transitioning.animationKey = @"DemoTransitionAnimationModalSink";
    } completion:NULL];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
