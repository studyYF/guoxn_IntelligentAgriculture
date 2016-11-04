//
//  GXNToolbarButton.h
//  IntelligentAgriculture
//
//  Created by YangFan on 16/11/4.
//  Copyright © 2016年 YangFan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SizeButton : UIButton

@end


@interface GXNToolbarButton : SizeButton

/**
 创建toolbar左边按钮
 */
+ (SizeButton *)createLeftToolbarButtonWithTarget:(id)target action:(SEL)action;
/**
 创建toolbar右边按钮
 */
+ (SizeButton *)createRightToolbarButtonWithTarget:(id)target action:(SEL)action;

@end
