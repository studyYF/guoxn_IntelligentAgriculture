//
//  GXNToolbarButton.m
//  IntelligentAgriculture
//
//  Created by YangFan on 16/11/4.
//  Copyright © 2016年 YangFan. All rights reserved.
//

#import "GXNToolbarButton.h"

@implementation SizeButton

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(0, 5, 25, 25);
    self.imageView.yf_centerX = self.yf_width * 0.5;
    self.titleLabel.yf_y = self.imageView.yf_height + 8;
    self.titleLabel.yf_centerX = self.yf_width * 0.5;
}

@end

@implementation GXNToolbarButton

+ (SizeButton *)createLeftToolbarButtonWithTarget:(id)target action:(SEL)action
{
    SizeButton * button = [SizeButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, yfWidth * 0.5, toolbarHeight);
    [button setTitle:@"实时数据" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [button setTitleColor:[UIColor colorWithRed:0.37 green:0.60 blue:0.99 alpha:1.00] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithRed:0.80 green:0.80 blue:0.80 alpha:1.00] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:@"realTimeData"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"realTimeData_highlighted"] forState:UIControlStateHighlighted];
    return button;
}

+ (SizeButton *)createRightToolbarButtonWithTarget:(id)target action:(SEL)action
{
    SizeButton * button = [SizeButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(yfWidth * 0.5 , 0, yfWidth * 0.5, toolbarHeight);
    [button setTitle:@"设备控制" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [button setTitleColor:[UIColor colorWithRed:0.37 green:0.60 blue:0.99 alpha:1.00] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithRed:0.80 green:0.80 blue:0.80 alpha:1.00] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:@"deviceControll"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"deviceControll_highlighted"] forState:UIControlStateHighlighted];
    return button;
}



@end
