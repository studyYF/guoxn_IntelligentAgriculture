//
//  GXNLoginApi.m
//  IntelligentAgriculture
//
//  Created by YangFan on 16/11/4.
//  Copyright © 2016年 YangFan. All rights reserved.
//

#import "GXNLoginApi.h"

@interface GXNLoginApi ()

/** 用户名 */
@property (nonatomic,copy) NSString * username;

/** 密码 */
@property (nonatomic,copy) NSString * password;

@end


@implementation GXNLoginApi

- (instancetype)initWithUsername:(NSString *)username password:(NSString *)password
{
    self = [super init];
    if (self) {
        self.username = username;
        self.password = password;
    }
    return self;
}

- (NSString *)requestUrl
{
    return loginURL;
}

- (YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

- (id)requestArgument
{
    return @{@"loginName" : self.username, @"loginPass" : self.password};
}

@end
