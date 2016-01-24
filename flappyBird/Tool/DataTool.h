//
//  DataTool.h
//  flappyBird
//
//  Created by dengwei on 16/1/24.
//  Copyright (c) 2016年 dengwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataTool : NSObject

/**
 *  根据指定key获取值
 *
 *  @param defaultName key值
 *
 *  @return 与key相对应的值
 */
+ (NSInteger)integerForKey:(NSString *)defaultName;

/**
 *  设置相应的键值对
 *
 *  @param value       值
 *  @param defaultName 键
 */
+ (void)setInteger:(NSInteger)value forKey:(NSString *)defaultName;

@end
