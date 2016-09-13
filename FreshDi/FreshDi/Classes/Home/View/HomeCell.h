//
//  HomeCell.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/8.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Activity.h"
#import "Goods.h"

typedef NS_ENUM(NSInteger, HomeCellType) {
    HomeCellTypeVertical,
    HomeCellTypeHorizontal
};
@interface HomeCell : UICollectionViewCell
@property (nonatomic,strong) Goods *goods;
@property (nonatomic,strong) Activity *activity;
@property (nonatomic) BOOL buyViewShowZear;

@end
