//
//  DLBasicController.m
//  OC版微博
//
//  Created by mac on 15/12/16.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "DLBasicController.h"
#import "DLVistorView.h"


@interface DLBasicController ()

@property (nonatomic, assign) BOOL loginStatus;

@end

@implementation DLBasicController

- (void)loadView
{
    if (self.loginStatus)
    {
        [super loadView];
    }
    else
    {
        self.view = [[DLVistorView alloc] init];
    }
}

- (BOOL)loginStatus
{
    return false;
}

@end
