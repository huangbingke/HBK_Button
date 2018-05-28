//
//  ViewController.m
//  HBK_Button
//
//  Created by 黄冰珂 on 2018/5/28.
//  Copyright © 2018年 KK. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Layout.h"

//屏幕的宽度
#define kScreenWidth            [[UIScreen mainScreen] bounds].size.width

//屏幕的高度
#define kScreenHeight           [[UIScreen mainScreen] bounds].size.height

#define kRandomColor  [UIColor colorWithRed:arc4random() % 256 / 255. green:arc4random() % 256 / 255. blue:arc4random() % 256 / 255. alpha:1]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self leftImageButton];
    [self rightImageButton];
    [self topImageButton];
    [self bottomImageButton];
    
}

- (void)leftImageButton {
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setTitle:@"左边---" forState:(UIControlStateNormal)];
    btn.backgroundColor = kRandomColor;
    [btn setImage:[UIImage imageNamed:@"icon"] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor greenColor] forState:(UIControlStateHighlighted)];
    btn.frame = CGRectMake((kScreenWidth-200)/2, 100, 200, 50);
    [btn setImageLayout:(UIButtonLayoutTypeImageLeft) space:10];
    btn.isSizeToFit = YES;
    [self.view addSubview:btn];
}

- (void)rightImageButton {
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setTitle:@"右边---" forState:(UIControlStateNormal)];
    btn.backgroundColor = kRandomColor;

    [btn setImage:[UIImage imageNamed:@"icon"] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor greenColor] forState:(UIControlStateHighlighted)];

    btn.frame = CGRectMake((kScreenWidth-200)/2, 200, 200, 50);
    [btn setImageLayout:(UIButtonLayoutTypeImageRight) space:10];
    btn.isSizeToFit = YES;
    [self.view addSubview:btn];
}
- (void)topImageButton {
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setTitle:@"上边---" forState:(UIControlStateNormal)];
    btn.backgroundColor = kRandomColor;
    [btn setImage:[UIImage imageNamed:@"icon"] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor greenColor] forState:(UIControlStateHighlighted)];

    btn.frame = CGRectMake((kScreenWidth-100)/2, 300, 100, 100);
    [btn setImageLayout:(UIButtonLayoutTypeImageTop) space:0];
    btn.isSizeToFit = YES;
    [self.view addSubview:btn];
}
- (void)bottomImageButton {
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setTitle:@"下边---" forState:(UIControlStateNormal)];
    btn.backgroundColor = kRandomColor;
    [btn setImage:[UIImage imageNamed:@"icon"] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor greenColor] forState:(UIControlStateHighlighted)];

    btn.frame = CGRectMake((kScreenWidth-100)/2, 450, 100, 100);
    [btn setImageLayout:(UIButtonLayoutTypeImageBottom) space:0];
    btn.isSizeToFit = YES;
    [self.view addSubview:btn];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
