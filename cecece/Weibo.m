//
//  Weibo.m
//  01-微博
//
//  Created by apple on 15/1/14.
//  Copyright (c) 2015年 heima. All rights reserved.
//

#import "Weibo.h"

@implementation Weibo

+ (instancetype)weiboWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}
@end
