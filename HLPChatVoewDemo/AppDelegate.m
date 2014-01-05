//
//  AppDelegate.m
//  HLPChatVoewDemo
//
//  Created by zhao on 14-1-5.
//  Copyright (c) 2014年 zhao. All rights reserved.
//

#import "AppDelegate.h"
#import "MainPageViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UITabBarController *tabBarController=[[UITabBarController alloc] init];
    
    UIViewController *first=[[UIViewController alloc] init];
    
    first.view.backgroundColor=[UIColor redColor];
    first.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"会话" image:[UIImage imageNamed:@"chat.png"] tag:100];
    
    
    
    UIViewController *second=[[UIViewController alloc] init];
    
    second.view.backgroundColor=[UIColor blueColor];
    
    second.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"通讯录" image:[UIImage imageNamed:@"contact.png"] tag:101];
    
    
    
    UIViewController *three=[[UIViewController alloc] init];
    
    three.view.backgroundColor=[UIColor blackColor];
    
    three.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"发现" image:[UIImage imageNamed:@"search.png"] tag:102];
    
    UIViewController *four=[[UIViewController alloc] init];
    
    four.view.backgroundColor=[UIColor blackColor];
    
    four.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"我" image:[UIImage imageNamed:@"me.png"] tag:103];;
    
    NSMutableArray *controllers=[[NSMutableArray alloc]initWithObjects:first,second,three,four,nil];
    
    
    
    [tabBarController setViewControllers:controllers];
    
    
    
    tabBarController.delegate=self;
    
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
