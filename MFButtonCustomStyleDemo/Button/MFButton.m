//
//  MFButton.m
//  MFButtonCustomStyleDemo
//
//  Created by XuMengFan on 16/9/20.
//  Copyright © 2016年 MF. All rights reserved.
//

#import "MFButton.h"

@implementation MFButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType
{
    MFButton *button = [super buttonWithType:buttonType];
    [button defaultSet];
    return button;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self defaultSet];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self defaultSet];
    }
    return self;
}

- (void)defaultSet
{
    self.topMarginOffset = 0;
    self.verticalSpacing = 0;
    self.horizontalSpacing = 0;
    self.buttonStyle = MFButtonStyleDefault;
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    switch (self.buttonStyle) {
        case MFButtonStyleImageRightTextLeft://图片在右,文字在左
        {
            CGRect imageViewFrame = self.imageView.frame;
            CGRect titleLabelFrame = self.titleLabel.frame;
            CGFloat totalWidth = imageViewFrame.size.width + self.horizontalSpacing + titleLabelFrame.size.width;
            
            titleLabelFrame.origin.x = (self.frame.size.width - totalWidth) / 2;
            imageViewFrame.origin.x = titleLabelFrame.origin.x + titleLabelFrame.size.width + self.horizontalSpacing;
            
            titleLabelFrame.origin.y += self.topMarginOffset;
            imageViewFrame.origin.y += self.topMarginOffset;

            self.titleLabel.frame = titleLabelFrame;
            self.imageView.frame = imageViewFrame;
        }
            break;
        case MFButtonStyleImageUnderTextUp://图片在下,文字在上
        {
            CGRect imageViewFrame = self.imageView.frame;
            CGRect titleLabelFrame = self.titleLabel.frame;
            CGFloat totalHeight = imageViewFrame.size.height + self.verticalSpacing + titleLabelFrame.size.height;
            
            titleLabelFrame.origin.y = (self.frame.size.height - totalHeight) / 2 + self.topMarginOffset;
            imageViewFrame.origin.y = titleLabelFrame.origin.y + titleLabelFrame.size.height + self.verticalSpacing;
            
            titleLabelFrame.origin.x = (self.frame.size.width - titleLabelFrame.size.width) / 2;
            imageViewFrame.origin.x = (self.frame .size.width - imageViewFrame.size.width) / 2;
            
            self.titleLabel.frame = titleLabelFrame;
            self.imageView.frame = imageViewFrame;
        }
            break;
        case MFButtonStyleImageUpTextUnder://图片在上,文字在下
        {
            CGRect imageViewFrame = self.imageView.frame;
            CGRect titleLabelFrame = self.titleLabel.frame;
            CGFloat totalHeight = imageViewFrame.size.height + self.verticalSpacing + titleLabelFrame.size.height;
            
            imageViewFrame.origin.y = (self.frame.size.height - totalHeight) / 2 + self.topMarginOffset;
            titleLabelFrame.origin.y = imageViewFrame.origin.y + imageViewFrame.size.height + self.verticalSpacing;

            imageViewFrame.origin.x = (self.frame .size.width - imageViewFrame.size.width) / 2;
            titleLabelFrame.origin.x = (self.frame.size.width - titleLabelFrame.size.width) / 2;
   
            self.titleLabel.frame = titleLabelFrame;
            self.imageView.frame = imageViewFrame;
        }
            break;
        case MFButtonStyleImageLeftTextRight://图片在左,文字在右
        {
            
        }
            break;
        default:
            break;
    }

}

@end
