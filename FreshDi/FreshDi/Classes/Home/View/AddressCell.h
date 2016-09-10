//
//  AdressCell.h
//  LoveFreshBeen_OC
//
//  Created by 江科 on 16/3/23.
//  Copyright © 2016年 江科. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDAddressData.h"

typedef void(^ModifyCallback)(NSInteger tag);


@interface AddressCell : UITableViewCell

@property (nonatomic,strong) Address *address;

+ (instancetype)cellWithTable:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath callbackBlock:(ModifyCallback)callback;
@end
