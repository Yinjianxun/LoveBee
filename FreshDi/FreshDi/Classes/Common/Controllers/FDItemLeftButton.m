//
//  FDItemLeftButton.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDItemLeftButton.h"

//Navi 左侧按钮样式及约束
@implementation FDItemLeftButton

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    [self.titleLabel sizeToFit];
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    CGFloat xOffSet = -20;
    
    self.titleLabel.frame = CGRectMake(xOffSet, height - 15, width, 15);
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.imageView.frame = CGRectMake(xOffSet, 0, width, height - 15);
    self.imageView.contentMode = UIViewContentModeCenter;
    
}

@end

//Navi 右侧按钮样式及约束
@implementation FDItemRightButton

- (void)layoutSubviews {
    
    [super layoutSubviews];
    [self.titleLabel sizeToFit];
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    CGFloat offset = 20;
    self.titleLabel.frame = CGRectMake(offset, height - 15, width, 15);
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.imageView.frame = CGRectMake(offset, 0, width, height - 15);
    self.imageView.contentMode = UIViewContentModeCenter;
    
}

@end
