//
//  DLMainTabBarController.m
//  OC版微博
//
//  Created by mac on 15/12/16.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "DLMainTabBarController.h"
#import "DLDiscoverController.h"
#import "DLHomeController.h"
#import "DLMessageController.h"
#import "DLProfileController.h"
#import "DLMainTabBar.h"

@interface DLMainTabBarController ()

@end

@implementation DLMainTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITabBar *tabBar = [UITabBar appearance];
    tabBar.tintColor = [UIColor orangeColor];

    [self setValue:[[DLMainTabBar alloc] init] forKey:@"tabBar"];
    
     DLHomeController *homeVC = [[DLHomeController alloc] init];
    [self addChildViewController:homeVC andTitle:@"首页" andImageName:@"tabbar_home"];
    
    DLMessageController *messageVC = [[DLMessageController alloc] init];
    [self addChildViewController:messageVC andTitle:@"消息" andImageName:@"tabbar_message_center"];
    
    DLDiscoverController *discoverVC = [[DLDiscoverController alloc] init];
    [self addChildViewController:discoverVC andTitle:@"发现" andImageName:@"tabbar_discover"];
    
    DLProfileController *profileVC = [[DLProfileController alloc] init];
    [self addChildViewController:profileVC andTitle:@"我" andImageName:@"tabbar_profile"];
}

- (void)addChildViewController:(UIViewController *)controller andTitle: (NSString *)title andImageName: (NSString *)imageName
{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
    
    controller.title = title;
    controller.tabBarItem.image = [UIImage imageNamed:imageName];
    NSString *highlightImage = [NSString stringWithFormat:@"%@_highlighted", imageName];
    controller.tabBarItem.selectedImage = [UIImage imageNamed:highlightImage];
    [self addChildViewController:nav];
}

@end
