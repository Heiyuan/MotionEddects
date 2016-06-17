//
//  ViewController.m
//  delement
//
//  Created by 刘志远 on 16/6/17.
//  Copyright © 2016年 Dayuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"bj"];
    [self.view addSubview:imageView];
    UIInterpolatingMotionEffect *effect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    effect.maximumRelativeValue = @50.0;
    effect.minimumRelativeValue = @(-50.0);
    UIInterpolatingMotionEffect *effectx = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    effectx.maximumRelativeValue = @50.0;
    effectx.minimumRelativeValue = @(-50.0);
    [imageView addMotionEffect:effect];
    [imageView addMotionEffect:effectx];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
