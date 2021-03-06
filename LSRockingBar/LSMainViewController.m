//
//  LSMainViewController.m
//  LSRockingBar
//
//  Created by 刘爽 on 16/12/26.
//  Copyright © 2016年 MZJ. All rights reserved.
//

#import "LSMainViewController.h"
#import "LSRockingBarView.h"

@interface LSMainViewController() <LSRockingBarViewDelegate>

@end

@implementation LSMainViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    LSRockingBarView *rockingBarView = [[LSRockingBarView alloc] initWithFrame:CGRectMake(00, 100, 300, 50) AndDirection:LSRockingBarMoveDirectionHorizontal];
    [self.view addSubview:rockingBarView];
    rockingBarView.delegate = self;
    
    LSRockingBarView *rockingBarView2 = [[LSRockingBarView alloc] initWithFrame:CGRectMake(50, 200, 50, 300) AndDirection:LSRockingBarMoveDirectionVertical];
    [self.view addSubview:rockingBarView2];
    rockingBarView2.delegate = self;
    
    LSRockingBarView *rockingBarView3 = [[LSRockingBarView alloc] initWithFrame:CGRectMake(100, 200, 250, 250) AndDirection:LSRockingBarMoveDirectionAll];
    [self.view addSubview:rockingBarView3];
    rockingBarView3.sliderbackgroundColor = [UIColor cyanColor];
    rockingBarView3.delegate = self;
}

- (void)LSRockingBarViewOffsetX:(CGFloat)x offsetY:(CGFloat)y{
    NSLog(@"%s",__func__);
    NSLog(@"offsetX:%f,offsetY:%f",x,y);
}

@end
