//
//  DataTool.m
//  flappyBird
//
//  Created by dengwei on 16/1/24.
//  Copyright (c) 2016年 dengwei. All rights reserved.
//

#import "DataTool.h"

@implementation DataTool

+ (NSInteger)integerForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] integerForKey:defaultName];
}

+ (void)setInteger:(NSInteger)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
