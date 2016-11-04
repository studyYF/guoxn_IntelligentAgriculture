//
//  NSString+MD5.h
//  happyRabbit
//
//  Created by Huatan on 16/5/13.
//  Copyright © 2016年 Huatan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5)


+ (NSString*)md5:(NSString*)str;

+ (NSString *)md5_16:(NSString *)str;


@end
