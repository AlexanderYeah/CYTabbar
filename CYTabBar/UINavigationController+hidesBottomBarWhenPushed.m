//
//  UINavigationController+hidesBottomBarWhenPushed.m
//  CYTabBarDemo
//
//  Created by 张春雨 on 2017/11/18.
//  Copyright © 2017年 张春雨. All rights reserved.
//

#import "UINavigationController+hidesBottomBarWhenPushed.h"

@implementation UINavigationController (hidesBottomBarWhenPushed)
+ (void)load {
    Method originalMethod = class_getInstanceMethod([self class], NSSelectorFromString(@"pushViewController:animated:"));
    Method exchangeMethod = class_getInstanceMethod([self class], @selector(hidesBottomBarAndPushViewController:animated:));
    method_exchangeImplementations(exchangeMethod, originalMethod);
}

- (void)hidesBottomBarAndPushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [self hidesBottomBarAndPushViewController:viewController animated:animated];
    CGRect frame = self.tabBarController.tabBar.frame;
    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
    self.tabBarController.tabBar.frame = frame;
}
@end
