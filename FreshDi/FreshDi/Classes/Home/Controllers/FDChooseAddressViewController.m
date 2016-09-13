//
//  FDChooseAddressViewController.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDChooseAddressViewController.h"
#import "UIBarButtonItem+button.h"
#import "FDAddressData.h"
#import "FDUserAddressInfo.h"
#import "AdressTitleView.h"
#import "MyAdressViewController.h"

@interface FDChooseAddressViewController ()

@end

@implementation FDChooseAddressViewController

//地址展示
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //默认地址的确认
    Address *defaultAdress = [FDUserAddressInfo sharedInstance].defaultAddress;
    if (defaultAdress) {
        
        //默认地址存在的话，显示地址信息栏
        AdressTitleView *titleView = [[AdressTitleView alloc]init];
        titleView.frame = CGRectMake(0, 0, [titleView adressViewWidth], 30);
        self.navigationItem.titleView = titleView;
        [self.navigationItem.titleView addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(titleViewClicked)]];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //navigationBarItem
    [self setNavigationBar];

}

//- (void)viewWillDisappear:(BOOL)animated {
//    
//    
//    self.tabBarController.hidesBottomBarWhenPushed = YES;
//}

- (void)setNavigationBar {
    
    //left Item button
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemSetTitle:@"扫一扫" image:@"icon_black_scancode" target:self action:@selector(leftButtonClick:) type:LeftItemButton];
    
    //right item button
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemSetTitle:@"搜索" image:@"icon_search" target:self action:@selector(rightButtonClick:) type:RightItemButton];
    
    //navi tintColor
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:253/255.0 green:212/255.0 blue:49/255.0 alpha:1.0];
    
}

//跳转 我的地址
- (void)titleViewClicked {
    [self.navigationController pushViewController:[MyAdressViewController new] animated:YES];
    
}

- (void)leftButtonClick:(UIButton *)sender {
    
    
    
}

- (void)rightButtonClick:(UIButton *)sender {
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
