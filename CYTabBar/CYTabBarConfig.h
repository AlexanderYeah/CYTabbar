//
//  CYTabBarConfig.h
//  CYTabBarDemo
//
//  Created by 张 春雨 on 2017/5/5.
//  Copyright © 2017年 张春雨. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYTabBarConfig : NSObject
// 设置文字颜色
@property (strong , nonatomic) UIColor *textColor;
// 设置文字选中颜色
@property (strong , nonatomic) UIColor *selectedTextColor;
// 背景颜色
@property(strong , nonatomic) UIColor *backgroundColor;
// 指定的初始化控制器
@property(assign , nonatomic) NSInteger selectIndex;
// 中间按钮所在位置
@property (nonatomic,assign) NSInteger centerBtnIndex;
// 中间按钮凸出的高度
@property (nonatomic,assign) CGFloat bulgeHeight;
// 是否在二级页面隐藏
@property (nonatomic,assign) BOOL hidesBottomBarWhenPushed;


/**
 *  外观配置的单例对象
 */
+ (instancetype)shared;
@end
