//
//  FDFreshReservationVc.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/8.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDFreshReservationVc.h"
#import "FDARVc.h"

@interface FDFreshReservationVc ()

@end

@implementation FDFreshReservationVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //jump to AR
    [self addButtonToAR];
    
    
}

- (void)addButtonToAR {
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.center.x - 50, self.view.center.y - 50, 100, 60)];
    
    [btn setTitle:@"To Feel The AR" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(jumpToARVc:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

- (void)jumpToARVc:(UIButton *)sender {
    
    [self.navigationController presentViewController:[FDARVc new] animated:YES completion:^{
       
        NSLog(@"perfect");
    }];
    
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
