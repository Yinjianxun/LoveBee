//
//  PJXAnimatedTabBarItem.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/30.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "PJXAnimatedTabBarItem.h"
#import "PJXBadge.h"

@interface PJXAnimatedTabBarItem ()

@property (nonatomic, strong) PJXBadge *badge;

@end

@implementation PJXAnimatedTabBarItem

- (NSString *)badgeValue
{
    if (self.badge) {
        return self.badge.text;
    }
    return nil;
}

- (void)setBadgeValue:(NSString *)badgeValue
{
    if (badgeValue == nil) {
        if (self.badge) {
            [self.badge removeFromSuperview];
            self.badge = nil;
        }
        return ;
    }
    
    if (self.badge == nil) {
        self.badge = [PJXBadge bage];
        
        UIView *containerView = self.iconView.icon.superview;
        if (containerView) {
            [self.badge addBadgeOnView:containerView];
        }
    }
    
    if (self.badge) {
        self.badge.text = badgeValue;
    }
}

- (void)playAnimationWithImageView:(PJXIconView *)imageView
{
    NSAssert(self.animation != nil, @"add animation in UITabBarItem");
    if (self.animation != nil && self.iconView != nil) {
//        NSLog(@"%@", self.iconView.icon);
        [self.animation playAnimation:imageView.icon textLabel:self.iconView.textLabel];
    }
}

- (void)deselectAnimationWithImageView:(PJXIconView *)imageView
{
    
    if (self.animation != nil && self.iconView != nil) {
        [self.animation deselectAnimation:imageView.icon textLabel:self.iconView.textLabel defaultTextColor:self.textColor];
    }
}

- (void)selectedStateWithImageView:(PJXIconView *)imageView
{
    if (self.animation != nil && self.iconView != nil) {
        [self.animation selectedState:imageView.icon textLabel:self.iconView.textLabel];
    }
}

@end
