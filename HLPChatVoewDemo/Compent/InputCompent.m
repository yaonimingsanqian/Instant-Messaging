//
//  InputCompent.m
//  HLPChatVoewDemo
//
//  Created by zhao on 14-1-5.
//  Copyright (c) 2014年 zhao. All rights reserved.
//

#import "InputCompent.h"

@implementation InputCompent

- (void)createMoreBtn
{
    moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    moreBtn.frame = kMoreBtnFrame;
    [moreBtn setBackgroundImage:[UIImage imageNamed:kMoreBtnBgImage] forState:UIControlStateNormal];
    [self addSubview:moreBtn];
}
- (void)createSoundAndTextBtn
{
    soundAndTextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    soundAndTextBtn.frame = kSoundAndTextBtnFrame;
    [soundAndTextBtn setBackgroundImage:[UIImage imageNamed:kSoundAndTextBtnBgImage] forState:UIControlStateNormal];
    [self addSubview:soundAndTextBtn];
}
- (void)createInputTextView
{
    inputTextView = [[UITextView alloc]initWithFrame:kInputTextFrame];
    inputTextView.returnKeyType = UIReturnKeySend;
    inputTextView.enablesReturnKeyAutomatically = YES;
    inputTextView.delegate = self;
    [self addSubview:inputTextView];
}
- (void)createFaceBtn
{
    faceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    faceBtn.frame = kFaceBtnFrame;
    [faceBtn setBackgroundImage:[UIImage imageNamed:kFaceBtnBgImage] forState:UIControlStateNormal];
    [self addSubview:faceBtn];
}
#pragma mark - 接口
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = kInputViewColor;
        
        [self createSoundAndTextBtn];
        [self createInputTextView];
        [self createFaceBtn];
        [self createMoreBtn];
    }
    return self;
}
- (void)hideKeyboard
{
    [inputTextView resignFirstResponder];
}

#pragma - mark - UITextViewDelegate

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text

{
    if ([text isEqualToString:@"\n"]) {
        
        [textView resignFirstResponder];
        
        return NO;
    }
    return YES;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
