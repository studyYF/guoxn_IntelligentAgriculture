//
//  GXNMainViewController.m
//  IntelligentAgriculture
//
//  Created by YangFan on 16/11/4.
//  Copyright © 2016年 YangFan. All rights reserved.
//

#import "GXNMainViewController.h"
#import "GXNToolbarButton.h"
#import "GXNRealTimeDataViewController.h"
#import "GXNDeviceControllViewController.h"

@interface GXNMainViewController ()

@end

@implementation GXNMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = NO;
    self.title = @"国兴农智慧农业平台";
    [self setToolBar];
}

#pragma mark -- 设置工具栏
- (void)setToolBar
{
    UIToolbar * toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, yfHeight - navigationHeight - toolbarHeight, yfWidth, toolbarHeight)];
    toolbar.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:toolbar];
    
    UIButton * realTimeDataButton = [GXNToolbarButton createLeftToolbarButtonWithTarget:self action:@selector(realTimeData)];
    [toolbar addSubview:realTimeDataButton];
    UIButton * deviceControllButton = [GXNToolbarButton createRightToolbarButtonWithTarget:self action:@selector(deviceControll)];
    [toolbar addSubview:deviceControllButton];
}

#pragma mark -- 事件监听方法
- (void)realTimeData
{
    YFLog(@"实时数据");
    GXNRealTimeDataViewController * vc = [[GXNRealTimeDataViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)deviceControll
{
    YFLog(@"设备监控");
    GXNDeviceControllViewController * vc = [[GXNDeviceControllViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
