//
//  UIButton+Layout.h
//  HBK_Button
//
//  Created by 黄冰珂 on 2018/5/28.
//  Copyright © 2018年 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, UIButtonLayoutType) {
    UIButtonLayoutTypeImageTop,
    UIButtonLayoutTypeImageLeft,
    UIButtonLayoutTypeImageBottom,
    UIButtonLayoutTypeImageRight,
};

@interface UIButton (Layout)



- (void)setImageLayout:(UIButtonLayoutType)type space:(CGFloat)space;

/**
 titleLabel是否自适应宽度
 */
@property (nonatomic, assign) BOOL isSizeToFit;






@end
