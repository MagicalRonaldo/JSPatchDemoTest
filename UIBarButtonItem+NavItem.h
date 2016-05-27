//
//  UIBarButtonItem+NavItem.h
//  iFangBroker
//
//  Created by xbmac on 14/12/20.
//  Copyright (c) 2014年 Plan B Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (NavItem)

+ (UIBarButtonItem *)getBackBarButtonItemForPresent:(id)taget action:(SEL)action;
+ (UIBarButtonItem *)getBarButtonItemWithString:(NSString *)titleStr taget:(id)taget action:(SEL)action;
+ (UIBarButtonItem *)getBarButtonItemWithImage:(UIImage *)normalImg highLihtedImg:(UIImage *)highLihtedImg taget:(id)taget action:(SEL)action;
+ (UIBarButtonItem *)getBarSpace:(float)spaceWidth;
+ (UIBarButtonItem *)getBarButtonItemWithChangeString:(NSString *)titleStr taget:(id)taget action:(SEL)action;

@end
