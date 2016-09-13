//
//  UIImageView+Extention.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/12.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "UIImageView+Extention.h"
#import "UIImageView+WebCache.h"
@implementation UIImageView (Extention)

- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholderImage {
    [self sd_setImageWithURL:url placeholderImage:placeholderImage];
}

@end
