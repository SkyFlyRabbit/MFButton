//
//  MFButton.h
//  MFButtonCustomStyleDemo
//
//  Created by XuMengFan on 16/9/20.
//  Copyright © 2016年 MF. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MFButtonStyle){
    MFButtonStyleImageLeftTextRight = 1,/**< 图片在左,文字在右*/
    MFButtonStyleImageRightTextLeft = 2,/**< 图片在右,文字在左*/
    MFButtonStyleImageUpTextUnder   = 3,/**< 图片在上,文字在下*/
    MFButtonStyleImageUnderTextUp   = 4,/**< 图片在下,文字在上*/
    MFButtonStyleDefault            = MFButtonStyleImageLeftTextRight/**< 默认系统样式,图片在左,文字在右*/
};

@interface MFButton : UIButton

@property (nonatomic, assign) MFButtonStyle buttonStyle;/**< 按钮样式,默认系统样式(图片在左,文字在右)*/
@property (nonatomic, assign) CGFloat topMarginOffset;/**< 距离顶部边界的偏移量,默认是0*/
@property (nonatomic, assign) CGFloat verticalSpacing;/**< 竖直方向图片和文字间距,默认是0*/
@property (nonatomic, assign) CGFloat horizontalSpacing;/**< 水平方向图片和文字间距,默认是0*/

@end
