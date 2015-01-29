//
//  Weibo.h
//  01-微博
//
//  Created by apple on 15/1/14.
//  Copyright (c) 2015年 heima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weibo : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *picture;
@property (nonatomic, assign, getter=isVip) BOOL vip;

+ (instancetype)weiboWithDict:(NSDictionary *)dict;
@end
