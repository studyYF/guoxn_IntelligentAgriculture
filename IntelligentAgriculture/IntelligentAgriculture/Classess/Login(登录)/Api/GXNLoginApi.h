//
//  GXNLoginApi.h
//  IntelligentAgriculture
//
//  Created by YangFan on 16/11/4.
//  Copyright © 2016年 YangFan. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

@interface GXNLoginApi : YTKRequest

- (instancetype)initWithUsername:(NSString *)username password:(NSString *)password;

@end
