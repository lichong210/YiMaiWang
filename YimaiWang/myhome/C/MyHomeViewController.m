//
//  MyHomeViewController.m
//  YimaiWang
//
//  Created by 田涛 on 16/4/20.
//  Copyright © 2016年 YimaiWang. All rights reserved.
//

#import "MyHomeViewController.h"

@interface MyHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation MyHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //tabview设置代理 设置重用机制
    self.Mytabview.dataSource=self;
    self.Mytabview.delegate=self;
    NSArray *array1=[NSArray arrayWithObjects:@"专业认证", nil];
    NSArray *array2=[NSArray arrayWithObjects:@"我的订阅",@"我的收藏",@"我的下载", nil];
    NSArray *array3=[NSArray arrayWithObjects:@"我的医圈", nil];
    NSArray *array4=[NSArray arrayWithObjects:@"设置", nil];
    self.dataArray=[NSMutableArray arrayWithObjects:array1,array2,array3,array4, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return self.dataArray.count;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataArray[section] count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString * cellIdentifier  = @"cell_idMyhome";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text=self.dataArray[indexPath.section][indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 18;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}

@end
