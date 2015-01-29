//
//  PYTableViewCell.h
//  cecece
//
//  Created by panyong on 15/1/29.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Weibo;
@interface PYTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *desc;
@property (nonatomic,copy) Weibo *wb;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imgHight;

@end














