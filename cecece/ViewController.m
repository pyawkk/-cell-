//
//  ViewController.m
//  cecece
//
//  Created by panyong on 15/1/29.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import "ViewController.h"
#import "PYTableViewCell.h"
#import "Weibo.h"
@interface ViewController ()
@property (nonatomic, strong) NSArray *weiboList;

@end

@implementation ViewController


- (NSArray *)weiboList {
    if (_weiboList == nil) {
        
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"web.json" withExtension:nil];
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        // 反序列化
        NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
        
        // 遍历数组
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:array.count];
        for (NSDictionary *dict in array) {
            [arrayM addObject:[Weibo weiboWithDict:dict]];
        }
        
        _weiboList = arrayM;
    }
    return _weiboList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.weiboList.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[PYTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.wb = self.weiboList[indexPath.row];

    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.wb = self.weiboList[indexPath.row];
    [cell layoutIfNeeded];
    
    CGSize size = [cell.desc systemLayoutSizeFittingSize:UILayoutFittingExpandedSize];
    return size.height + cell.desc.frame.origin.y + 20 + cell.imgHight.constant;
}


@end
