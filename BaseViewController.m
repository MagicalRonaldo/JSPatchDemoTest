//
//  FBViewController.m
//  iFangBroker
//
//  Created by Softwind.Tang on 14/12/9.
//  Copyright (c) 2014年 Plan B Inc. All rights reserved.
//

#import "BaseViewController.h"
#import <objc/runtime.h>
#import "UIBarButtonItem+NavItem.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

#pragma mark life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    [self addBackButton];
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}

//- (void)configBackType
//{
//    if (self.backType == BackTypePopBack || self.backType == BackTypePopToRoot) {
//        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
//    } else {
//        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
//    }
//}

- (void)addBackButton
{
    if (self.isTabTop) {
        return;
    }
    if (self.backType == BackTypeNone) {
        return;
    }
    
    UIBarButtonItem *buttonItem;
    buttonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"rule_icon_back"] style:UIBarButtonItemStylePlain target:self action:@selector(doBack:)];
    self.navigationItem.leftBarButtonItem = buttonItem;
    
    if (self.backType == BackTypeDismiss) {
        buttonItem = [UIBarButtonItem getBackBarButtonItemForPresent:self action:@selector(doBack:)];
    }
    
    if (self.backType == BackTypeDismiss) {
        UIBarButtonItem *spacer = [UIBarButtonItem getBarSpace:-10.0];
        [self.navigationItem setLeftBarButtonItems:@[spacer, buttonItem]];
    } else {
        UIBarButtonItem *spacer = [UIBarButtonItem getBarSpace:-5.0];
        [self.navigationItem setLeftBarButtonItems:@[spacer, buttonItem]];
    }
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
}

- (void)doBack:(id)sender
{
    if (self.backType == BackTypeDismiss) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else if (self.backType == BackTypePopBack) {
        [self.navigationController popViewControllerAnimated:YES];
    } else if (self.backType == BackTypePopToRoot) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

- (void)refreshData
{
    
}

//#pragma mark - NSObject
//
//- (NSMutableDictionary *)dictionaryRepresentation
//{
//    unsigned int count;
//    objc_property_t *properties = class_copyPropertyList([self class], &count);
//    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
//    for (int i = 0; i < count; ++ i) {
//        NSString *key = [NSString stringWithUTF8String:property_getName(properties[i])];
//        id value = [self valueForKey:key];
//        dic[key] = value ? value : @"";
//    }
//    return dic;
//}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
