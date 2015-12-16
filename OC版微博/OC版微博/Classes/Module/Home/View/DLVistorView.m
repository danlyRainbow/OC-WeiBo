//
//  DLVistorView.m
//  OC版微博
//
//  Created by mac on 15/12/16.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "DLVistorView.h"

@interface DLVistorView ()

@property (nonatomic, weak) UIImageView *iconView;
@property (nonatomic, weak) UIImageView *homeView;
@property (nonatomic, weak) UILabel *messageLabel;
@property (nonatomic, weak) UIButton *registerBtn;
@property (nonatomic, weak) UIButton *loginBtn;

@end

@implementation DLVistorView



- (void)layoutSubviews
{
    [super layoutSubviews];
    
//    [self.iconView translatesAutoresizingMaskIntoConstraints]
    self.iconView.translatesAutoresizingMaskIntoConstraints = NO;
    self.homeView.translatesAutoresizingMaskIntoConstraints = NO;
    self.messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.registerBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.loginBtn.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    NSLayoutConstraint *iconCenterX = [NSLayoutConstraint constraintWithItem:self.iconView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *iconCenterY = [NSLayoutConstraint constraintWithItem:self.iconView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:-50];
    
    NSLayoutConstraint *homeCenterX = [NSLayoutConstraint constraintWithItem:self.homeView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.iconView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *homeCenterY = [NSLayoutConstraint constraintWithItem:self.homeView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.iconView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    
    NSLayoutConstraint *messageTop = [NSLayoutConstraint constraintWithItem:self.messageLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.iconView attribute:NSLayoutAttributeBottom multiplier:1 constant:16];
    NSLayoutConstraint *messageCenterX = [NSLayoutConstraint constraintWithItem:self.messageLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.iconView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    
    NSLayoutConstraint *registerLeading = [NSLayoutConstraint constraintWithItem:self.registerBtn attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.messageLabel attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    NSLayoutConstraint *registerTop = [NSLayoutConstraint constraintWithItem:self.registerBtn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.messageLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:16];
     NSLayoutConstraint *registerWidth = [NSLayoutConstraint constraintWithItem:self.registerBtn attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
     NSLayoutConstraint *registerHeight = [NSLayoutConstraint constraintWithItem:self.registerBtn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:35];
    
    NSLayoutConstraint *loginTrailing = [NSLayoutConstraint constraintWithItem:self.loginBtn attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.messageLabel attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
    NSLayoutConstraint *loginTop = [NSLayoutConstraint constraintWithItem:self.loginBtn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.messageLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:16];
    NSLayoutConstraint *loginWidth = [NSLayoutConstraint constraintWithItem:self.loginBtn attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    NSLayoutConstraint *loginHeight = [NSLayoutConstraint constraintWithItem:self.loginBtn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:35];
    
    [self addConstraints:@[iconCenterX, iconCenterY, homeCenterX,homeCenterY, messageTop, messageCenterX, registerLeading, registerTop, registerWidth, registerHeight, loginTrailing, loginTop, loginWidth, loginHeight]];
     
     
}

#pragma mark - 懒加载
- (UIImageView *)iconView
{
    if (_iconView == nil)
    {
        UIImageView *iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_smallicon"]];
        [self addSubview:iconView];
        _iconView = iconView;
    }
    
    return _iconView;
}

- (UIImageView *)homeView
{
    if (_homeView == nil)
    {
        UIImageView *homeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_house"]];
        [self addSubview:homeView];
        _homeView = homeView;
    }
    return _homeView;
}

- (UILabel *)messageLabel
{
    if (_messageLabel == nil)
    {
        UILabel *messageLabel = [[UILabel alloc] init];
        messageLabel.text = @"关注一些人，看看这里有什么惊喜";
        [self addSubview:messageLabel];
        _messageLabel = messageLabel;
    }
    return _messageLabel;
}

- (UIButton *)registerBtn
{
    if (_registerBtn == nil)
    {
        UIButton *registerBtn = [[UIButton alloc] init];
        [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
        [registerBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];
        [registerBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [self addSubview:registerBtn];
        _registerBtn = registerBtn;
    }
    return _registerBtn;
}

- (UIButton *)loginBtn
{
    if (_loginBtn == nil)
    {
        UIButton *loginBtn = [[UIButton alloc] init];
        [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
        [loginBtn setBackgroundImage:[UIImage imageNamed:@"common_button_white_disable"] forState:UIControlStateNormal];
        [loginBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [self addSubview:loginBtn];
        _loginBtn = loginBtn;
    }
    return _loginBtn;
}


@end
