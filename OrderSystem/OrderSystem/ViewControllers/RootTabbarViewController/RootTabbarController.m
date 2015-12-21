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
#import "TaskViewController.h"

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
    
    MainViewController *viewController_0 = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MainViewController"];
    TaskViewController *viewController_1 = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"TaskViewController"];
    CircleViewController *viewController_2 = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CircleViewController"];
    PersonViewController *viewController_3 = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PersonViewController"];
    
    UINavigationController *viewController0 = [[UINavigationController alloc] initWithRootViewController:viewController_0];
    UINavigationController *viewController1 = [[UINavigationController alloc] initWithRootViewController:viewController_1];
    UINavigationController *viewController2 = [[UINavigationController alloc] initWithRootViewController:viewController_2];
    UINavigationController *viewController3 = [[UINavigationController alloc] initWithRootViewController:viewController_3];
    
    [viewController0.tabBarItem setImage:[UIImage imageNamed:@"Main"]];
    [viewController1.tabBarItem setImage:[UIImage imageNamed:@"Main"]];
    [viewController2.tabBarItem setImage:[UIImage imageNamed:@"Circle"]];
    [viewController3.tabBarItem setImage:[UIImage imageNamed:@"Person"]];
    
    [viewController0.tabBarItem setSelectedImage:[UIImage imageNamed:@"MainPressed"]];
    [viewController1.tabBarItem setSelectedImage:[UIImage imageNamed:@"MainPressed"]];
    [viewController2.tabBarItem setSelectedImage:[UIImage imageNamed:@"CirclePressed"]];
    [viewController3.tabBarItem setSelectedImage:[UIImage imageNamed:@"PersonPressed"]];
    
    [viewController0.tabBarItem setTitle:NSLocalizedString(@"发布任务", nil)];
    [viewController1.tabBarItem setTitle:NSLocalizedString(@"接受任务", nil)];
    [viewController2.tabBarItem setTitle:NSLocalizedString(@"圈子", nil)];
    [viewController3.tabBarItem setTitle:NSLocalizedString(@"个人", nil)];
    
    self.tabBar.tintColor = [UIColor colorWithRed:31./255. green:183./255. blue:215./255. alpha:1.];
    
    self.viewControllers = @[viewController0, viewController1, viewController2, viewController3];
    
    UITabBarItem *wallPaperItem = [self.tabBar.items objectAtIndex:TAB_INDEX_WALLPAPER];
    UITabBarItem *taskItem = [self.tabBar.items objectAtIndex:TAB_INDEX_TASK];
    UITabBarItem *circleItem = [self.tabBar.items objectAtIndex:TAB_INDEX_CIRCLE];
    UITabBarItem *settingItem = [self.tabBar.items objectAtIndex:TAB_INDEX_SETTING];
    
    wallPaperItem.titlePositionAdjustment = UIOffsetMake(0, -2.0);
    taskItem.titlePositionAdjustment = UIOffsetMake(0, -2.0);
    circleItem.titlePositionAdjustment = UIOffsetMake(0, -2.0);
    settingItem.titlePositionAdjustment = UIOffsetMake(0, -2.0);
}

@end
