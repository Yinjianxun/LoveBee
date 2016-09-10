//
//  FDMainTabBarController.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/8.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDMainTabBarController.h"
#import "FDHomeVc.h"
#import "FDLightningSupermarketVc.h"
#import "FDFreshReservationVc.h"
#import "FDShoppingCartVc.h"
#import "FDMineVc.h"
#import "FDBaseNaviController.h"
//tabBar动画
#import "PJXAnimatedTabBarController.h"
#import "PJXAnimatedTabBarItem.h"
#import "PJXIconView.h"
#import "PJXBounceAnimation.h"


@interface FDMainTabBarController ()<UITabBarControllerDelegate>

//@property (strong, nonatomic) PJXBounceAnimation *bounceAnimation;

@end

@implementation FDMainTabBarController



- (void)viewDidLoad {
    
    //设置 子控制器
    //首页
    //Home
    PJXAnimatedTabBarItem *firstTabBarItem = [[PJXAnimatedTabBarItem alloc] init];
    firstTabBarItem.tag = 0;
    
    FDBaseNaviController *firstNav = [self addChildVcWithVc:[[FDHomeVc alloc] init] withTabBarItem:firstTabBarItem title:@"首页" normalImage:@"v2_home" selectedImage:@"v2_home_selected"];
    firstNav.tabBarItem = firstTabBarItem;
    
    //闪电超市
    //FDLightningSupermarket
    PJXAnimatedTabBarItem *secondTabBarItem = [[PJXAnimatedTabBarItem alloc] init];
    secondTabBarItem.tag = 1;
    
    FDBaseNaviController *secondNav = [self addChildVcWithVc:[[FDLightningSupermarketVc alloc] init] withTabBarItem:secondTabBarItem title:@"闪电超市" normalImage:@"v2_order" selectedImage:@"v2_order_selected"];
    secondNav.tabBarItem = secondTabBarItem;
    
    //新鲜预订
    //FDFreshReservationVc
    PJXAnimatedTabBarItem *thirdTabBarItem = [[PJXAnimatedTabBarItem alloc] init];
    thirdTabBarItem.tag = 2;
    
    FDBaseNaviController *thirdNav = [self addChildVcWithVc:[[FDFreshReservationVc alloc] init] withTabBarItem:thirdTabBarItem title:@"新鲜预订" normalImage:@"freshReservation" selectedImage:@"freshReservation_selected"];
    thirdNav.tabBarItem = thirdTabBarItem;
    
    //购物车
    //FDShoppingCartVc
    PJXAnimatedTabBarItem *forthTabBarItem = [[PJXAnimatedTabBarItem alloc] init];
    forthTabBarItem.tag = 3;
    
    FDBaseNaviController *forthNav = [self addChildVcWithVc:[[FDShoppingCartVc alloc] init] withTabBarItem:forthTabBarItem title:@"购物车" normalImage:@"shopCart" selectedImage:@"shopCart_selected"];
    forthNav.tabBarItem = forthTabBarItem;
    
    //我的
    //FDShoppingCartVc
    PJXAnimatedTabBarItem *fifthTabBarItem = [[PJXAnimatedTabBarItem alloc] init];
    fifthTabBarItem.tag = 4;
    
    FDBaseNaviController *fifthNav = [self addChildVcWithVc:[[FDMineVc alloc] init] withTabBarItem:fifthTabBarItem title:@"我的" normalImage:@"v2_my" selectedImage:@"v2_my_selected"];
    fifthNav.tabBarItem = fifthTabBarItem;
    
    self.viewControllers = @[firstNav, secondNav, thirdNav, forthNav, fifthNav];
    [super viewDidLoad];
}

//添加 子控制器
- (FDBaseNaviController *)addChildVcWithVc:(UIViewController *)viewControl  withTabBarItem:(PJXAnimatedTabBarItem *)tabBarItem title:(NSString *)title normalImage:(NSString *)normalName selectedImage:(NSString *)selectedName {
    
    PJXBounceAnimation *bounceAnimation = [[PJXBounceAnimation alloc] init];
    
    tabBarItem.title = title;
    tabBarItem.image = [[UIImage imageNamed:normalName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:selectedName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.animation = bounceAnimation;
    
    UIImageView *firstIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:selectedName]];
    UILabel *firstLabel = [[UILabel alloc] init];
    firstLabel.text = title;
    tabBarItem.iconView = [[PJXIconView alloc] initWithIcon:firstIconView textLabel:firstLabel];
    
    FDBaseNaviController *currentRootNavi = [[FDBaseNaviController alloc] initWithRootViewController:viewControl];
    return currentRootNavi;
}


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    NSArray *childVcArr = tabBarController.childViewControllers;
    
    NSUInteger index = [childVcArr indexOfObject:viewController];
    
    //购物车时不需要 tabbar动画
    if (index == 3) {
        return NO;
    }
    
    return YES;
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
