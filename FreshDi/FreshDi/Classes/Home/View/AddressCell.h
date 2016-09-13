//
//  AdressCell.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/11.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDAddressData.h"

typedef void(^ModifyCallback)(NSInteger tag);


@interface AddressCell : UITableViewCell

@property (nonatomic,strong) Address *address;

+ (instancetype)cellWithTable:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath callbackBlock:(ModifyCallback)callback;
@end
