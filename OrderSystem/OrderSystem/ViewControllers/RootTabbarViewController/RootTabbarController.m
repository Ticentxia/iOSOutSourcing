//
//  ViewController.m
//  OrderSystem
//
//  Created by CKQ on 15/12/20.
//  Copyright © 2015年 Ticent&Jayce. All rights reserved.
//

#import "RootTabbarController.h"
#import "MainViewController.h"
#import "CircleViewController.h"
#import "PersonViewController.h"

@interface RootTabbarController ()

@end

@implementation RootTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureTabbarItems];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - configure

- (void)configureTabbarItems {
    
    MainViewController *viewController_0 = [[MainViewController alloc] init];
    CircleViewController *viewController_1 = [[CircleViewController alloc] init];
    PersonViewController *viewController_2 = [[PersonViewController alloc] init];
    
    UINavigationController *viewController0 = [[UINavigationController alloc] initWithRootViewController:viewController_0];
    UINavigationController *viewController1 = [[UINavigationController alloc] initWithRootViewController:viewController_1];
    UINavigationController *viewController2 = [[UINavigationController alloc] initWithRootViewController:viewController_2];
    
    [viewController0.tabBarItem setImage:[UIImage imageNamed:@"Main"]];
    [viewController1.tabBarItem setImage:[UIImage imageNamed:@"Circle"]];
    [viewController2.tabBarItem setImage:[UIImage imageNamed:@"Person"]];
    
    [viewController0.tabBarItem setSelectedImage:[UIImage imageNamed:@"MainPressed"]];
    [viewController1.tabBarItem setSelectedImage:[UIImage imageNamed:@"CirclePressed"]];
    [viewController2.tabBarItem setSelectedImage:[UIImage imageNamed:@"PersonPressed"]];
    
    [viewController0.tabBarItem setTitle:NSLocalizedString(@"首页", nil)];
    [viewController1.tabBarItem setTitle:NSLocalizedString(@"圈子", nil)];
    [viewController2.tabBarItem setTitle:NSLocalizedString(@"个人", nil)];
    
    self.tabBar.tintColor = [UIColor colorWithRed:31./255. green:183./255. blue:215./255. alpha:1.];
    
    self.viewControllers = @[viewController0, viewController1, viewController2];
    
    UITabBarItem *wallPaperItem = [self.tabBar.items objectAtIndex:TAB_INDEX_WALLPAPER];
    UITabBarItem *taskItem = [self.tabBar.items objectAtIndex:TAB_INDEX_TASK];
    UITabBarItem *settingItem = [self.tabBar.items objectAtIndex:TAB_INDEX_SETTING];
    
    wallPaperItem.titlePositionAdjustment = UIOffsetMake(0, -2.0);
    taskItem.titlePositionAdjustment = UIOffsetMake(0, -2.0);
    settingItem.titlePositionAdjustment = UIOffsetMake(0, -2.0);
}

@end
