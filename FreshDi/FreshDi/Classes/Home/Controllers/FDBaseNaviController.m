//
//  FDBaseNaviController.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/8.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDBaseNaviController.h"

@interface FDBaseNaviController ()

//自定义leftBackBtn
//@property (strong, nonatomic) UIButton *leftBackBtn;

@end

@implementation FDBaseNaviController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//懒加载 leftBtn
- (UIButton *)leftBackBtn {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"v2_goback"] forState:UIControlStateNormal];
    btn.titleLabel.hidden = YES;
    [btn addTarget:self action:@selector(backBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    //水平居左
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //内边距
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    btn.frame = CGRectMake(0, 0, 44, 40);
    
    return btn;
}

- (void)backBtnClicked:(UIButton *)btn {
    [self popViewControllerAnimated:YES];
}

//重写 push方法:按左侧自定义按钮
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    viewController.navigationItem.hidesBackButton = YES;
    
    if (self.viewControllers.count > 0) {
        
        [UINavigationBar appearance].backItem.hidesBackButton = NO;
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.leftBackBtn];
        //跳转同时 隐藏底部bar栏
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:YES];
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
