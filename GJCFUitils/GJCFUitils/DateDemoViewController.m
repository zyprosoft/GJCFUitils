//
//  DateDemoViewController.m
//  GJCFUitils
//
//  Created by ZYVincent on 15/7/6.
//  Copyright (c) 2015年 ZYProSoft. All rights reserved.
//

#import "DateDemoViewController.h"
#import "GJCFUitils.h"

@interface DateDemoViewController ()

@end

@implementation DateDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *date = GJCFDateFromString(@"2014-12-13");
    
    NSString *timeAgo = GJCFDateTimeAgoString(date);
    
    [self addDebugMessage:timeAgo];
    
    NSString *weekString = GJCFDateGetWeekDayString(date);
    
    [self addDebugMessage:weekString];
}


@end
