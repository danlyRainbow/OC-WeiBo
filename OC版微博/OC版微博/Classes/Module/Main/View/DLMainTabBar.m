//
//  DLMainTabBar.m
//  OC版微博
//
//  Created by mac on 15/12/16.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "DLMainTabBar.h"
#define DLTabBarItemCount 5

@interface DLMainTabBar ()

@property (nonatomic, weak) UIButton *addBtn;

@end

@implementation DLMainTabBar



- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width = self.width / DLTabBarItemCount;
    CGFloat height = self.height;
    
    int index = 0;
    for (UIView *view in self.subviews)
    {
        if ([view isKindOfClass:[UIControl class]] && ![view isKindOfClass:[UIButton class]])
        {
            NSLog(@"%@", view);
            
            CGFloat x = index >= 2 ? (index + 1) * width : index * width;
            view.frame = CGRectMake(x, 0, width, height);
            index++;
        }
    }
    
    self.addBtn.frame = CGRectMake(2 * width, 0, width, height);
}

- (UIButton *)addBtn
{
    if (_addBtn == nil)
    {
        UIButton *btn = [[UIButton alloc] init];
        [self addSubview:btn];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        
        _addBtn = btn;
    }
    return _addBtn;
}

@end
