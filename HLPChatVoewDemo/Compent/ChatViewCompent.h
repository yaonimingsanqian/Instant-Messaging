//
//  ChatViewCompent.h
//  HLPChatVoewDemo
//
//  Created by zhao on 14-1-5.
//  Copyright (c) 2014年 zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatViewCompent.h"
#import "HPLChatTableView.h"
#import "InputCompent.h"

@interface ChatViewCompent : UIView
{
    @private
    HPLChatTableView *chatTableView;
    InputCompent *inputCompent;
}
- (id)initWithFrame :(CGRect)frame delegate:(id<HPLChatTableViewDataSource>)dataSource;
@end
