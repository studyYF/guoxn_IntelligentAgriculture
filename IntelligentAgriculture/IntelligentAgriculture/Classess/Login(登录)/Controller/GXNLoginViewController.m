//
//  GXNLoginViewController.m
//  IntelligentAgriculture
//
//  Created by YangFan on 16/11/4.
//  Copyright © 2016年 YangFan. All rights reserved.
//

#import "GXNLoginViewController.h"
#import "GXNMainViewController.h"
#import "GXNLoginApi.h"

@interface GXNLoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;

@end

@implementation GXNLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
}

- (IBAction)loginAction:(id)sender {
    GXNLoginApi * loginApi = [[GXNLoginApi alloc] initWithUsername:self.usernameTF.text password:[NSString md5_16:self.passwordTF.text]];
    [loginApi startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        YFLog(@"%@",request);
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        YFLog(@"%@",request);
    }];
    
    
    GXNMainViewController * vc = [[GXNMainViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
