//
//  ViewController.m
//  HLPChatVoewDemo
//
//  Created by zhao on 14-1-5.
//  Copyright (c) 2014年 zhao. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

#pragma mark - HPLChatTableViewDataSource
- (NSInteger)numberOfRowsForChatTable:(HPLChatTableView *)tableView
{
    return 2;
}
- (HPLChatData*)chatTableView:(HPLChatTableView *)tableView dataForRow:(NSInteger)row
{
    HPLChatData *hplData;
    if(row == 0)
    {
       hplData = [HPLChatData dataWithImage:[UIImage imageNamed:@"fail@2x.png"] date:[NSDate date] type:1];
    }else
    {
        hplData = [[HPLChatData alloc]initWithText:@"hello world" date:[NSDate date] type:0];
    }
    return hplData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    chatViewCompent = [[ChatViewCompent alloc]initWithFrame:[[UIScreen mainScreen] bounds] delegate:self];
    [self.view addSubview:chatViewCompent];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
