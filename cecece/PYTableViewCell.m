//
//  PYTableViewCell.m
//  cecece
//
//  Created by panyong on 15/1/29.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import "PYTableViewCell.h"
#import "Weibo.h"
@interface PYTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *icon;

@property (weak, nonatomic) IBOutlet UIImageView *img;

@end
@implementation PYTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setWb:(Weibo *)wb
{
    _wb = wb;
    _desc.text = wb.text;
    if (wb.picture) {
        _img.image = [UIImage imageNamed:wb.picture];
        self.imgHight.constant = 100;
    }else
    {
        self.imgHight.constant = 0;
    }
    
}


@end
