//
//  QuickCacheDemoViewController.m
//  GJCFUitils
//
//  Created by ZYVincent on 15/7/6.
//  Copyright (c) 2015年 ZYProSoft. All rights reserved.
//

#import "QuickCacheDemoViewController.h"

@interface QuickCacheDemoViewController ()

@end

@implementation QuickCacheDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *appCacheFileName = @"stringCacheDir";
    
    NSString *stringCachePathDir = GJCFAppCachePath(appCacheFileName);
    
    if (!GJCFFileDirectoryIsExist(stringCachePathDir)) {
        
        GJCFFileDirectoryCreate(stringCachePathDir);
    }
    
    NSString *stringFileName = @"birthday.txt";
    
    NSString *cachePath = [stringCachePathDir stringByAppendingPathComponent:stringFileName];
    
    NSString *note = @"今天是一个好日子，我就喜欢这样的日子";
    
    NSData *stringData = [note dataUsingEncoding:NSUTF8StringEncoding];
    
    [stringData writeToFile:cachePath atomically:YES];
    
    [self addDebugMessage:cachePath];
    
    NSString *fromFile = [[NSString alloc]initWithContentsOfFile:cachePath encoding:NSUTF8StringEncoding error:nil];
    
    [self addDebugMessage:fromFile];
}


@end
