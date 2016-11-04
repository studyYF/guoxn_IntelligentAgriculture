//
//  NSString+MD5.m
//  happyRabbit
//
//  Created by Huatan on 16/5/13.
//  Copyright © 2016年 Huatan. All rights reserved.
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (MD5)


+ (NSString*)md5:(NSString*)str
{
    char buff[128];
    unsigned char md[CC_MD5_DIGEST_LENGTH];
    
    bzero(md, CC_MD5_DIGEST_LENGTH);
    [str getCString:buff maxLength:128 encoding:NSASCIIStringEncoding];
    CC_MD5((const void *)buff, strlen(buff), md);
    
    bzero(buff,128);
    for (int i=0; i<CC_MD5_DIGEST_LENGTH; ++i)
    {
        int x = md[i];
        sprintf(buff, "%s%02x", buff, x);
    }
    
    NSString *stringPasswordMD5 = [NSString stringWithCString:buff encoding:NSASCIIStringEncoding];
    return stringPasswordMD5;
}

+ (NSString *)md5_16:(NSString *)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, strlen(cStr), result); // This is the md5 call
    return [[[NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ] substringFromIndex:8] substringToIndex:16];
}

@end
