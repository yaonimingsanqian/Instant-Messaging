//
//  ViewController.h
//  HLPChatVoewDemo
//
//  Created by zhao on 14-1-5.
//  Copyright (c) 2014年 zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HPLChatTableView.h"
#import "ChatViewCompent.h"
#import "Conversation.h"
#import "CommonData.h"


@interface ChatViewController : UIViewController<HPLChatTableViewDataSource,ChatDelegate>
{
    ChatViewCompent *chatViewCompent;
    Conversation *conversation;
    NSMutableArray *messageArray;
}
@end
