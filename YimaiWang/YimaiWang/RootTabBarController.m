//
//  RootTabBarController.m
//  乐旅
//
//  Created by 姜鸥人 on 16/3/14.
//  Copyright © 2016年 姜鸥人. All rights reserved.
//

#import "RootTabBarController.h"
#import "DiscoverTableViewController.h"
#import "DoctorTableViewController.h"
#import "HomeTableViewController.h"
#import "MyHomeTableViewController.h"
#import "NewsTableViewController.h"
@interface RootTabBarController ()

@property(nonatomic,strong)UISegmentedControl *segment;


@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    HomeTableViewController * vc1 = [[HomeTableViewController alloc]init];
     [self addOneChildVC:vc1 title:@"首页"];
 
    NewsTableViewController * vc2 = [[NewsTableViewController alloc]init];
    [self addOneChildVC:vc2 title:@"消息"];

    DoctorTableViewController * vc3 = [[DoctorTableViewController alloc]init];
    [self addOneChildVC:vc3 title:@"医圈"];
  
    DiscoverTableViewController *vc4 = [[DiscoverTableViewController alloc]init];
    [self addOneChildVC:vc4 title:@"发现"];
    MyHomeTableViewController *vc5 = [[MyHomeTableViewController alloc]init];
    [self addOneChildVC:vc5 title:@"我的"];
   
    
  //  self.navigationItem.title = self.tabBarItem.title;.
 }


- (void)addOneChildVC:(UIViewController *)childVC title:(NSString *)title
{
    //设置标题
    childVC.title = title;
    UINavigationController *naVC = [[UINavigationController alloc] initWithRootViewController:childVC];
    [self addChildViewController:naVC];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
