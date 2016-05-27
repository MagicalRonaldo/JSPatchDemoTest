//
//  FBViewController.h
//  iFangBroker
//
//  Created by Softwind.Tang on 14/12/9.
//  Copyright (c) 2014年 Plan B Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    BackTypePopBack = 0,
    BackTypeDismiss,
    BackTypePopToRoot,
    BackTypeNoBackButton,
    BackTypeNone
} BFVCBackType;

@interface BaseViewController : UIViewController

@property (nonatomic, assign) BFVCBackType backType;

/**
 *  是否为tab首页
 */
@property (nonatomic) BOOL isTabTop;

@end

