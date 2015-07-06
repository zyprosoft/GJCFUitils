//
//  AnimationDemoViewController.m
//  GJCFUitils
//
//  Created by ZYVincent on 15/7/6.
//  Copyright (c) 2015年 ZYProSoft. All rights reserved.
//

#import "AnimationDemoViewController.h"

@interface AnimationDemoViewController ()

@property (nonatomic,strong)UIView *demoView;

@end

@implementation AnimationDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.demoView = [[UIView alloc]init];
    self.demoView.gjcf_width = 100.f;
    self.demoView.gjcf_height = 100.f;
    self.demoView.gjcf_centerX = self.view.gjcf_centerX;
    self.demoView.gjcf_centerY = self.view.gjcf_centerY;
    
    self.demoView.backgroundColor = GJCFQuickHexColor(@"f3f4f5");
    
    [self.view addSubview:self.demoView];
 
    [self test1];
    
}

- (void)test1
{
    GJCFAnimationBottomFlipView(self.demoView, 0.3, nil, nil);
    
    [self performSelector:@selector(test2) withObject:nil afterDelay:0.3];
}

- (void)test2
{
    GJCFAnimationMoveViewSize(self.demoView, CGSizeMake(230, 230), 0.6);
    
    [self performSelector:@selector(test3) withObject:nil afterDelay:0.6];

}

- (void)test3
{
    GJCFAnimationMoveViewSize(self.demoView, CGSizeMake(50, 50), 0.6);

    GJCFAnimationMoveViewToY(self.demoView, self.view.gjcf_bottom,2.0);
    
    GJCFAnimationMoveViewToY(self.demoView, self.view.gjcf_centerY,2.0);

    [self performSelector:@selector(test4) withObject:nil afterDelay:2.0];

}

- (void)test4
{
    GJCFAnimationViewRotateZCycle(self.demoView, 270, 0.3);
}

@end
