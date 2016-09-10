//
//  LLNetworkTools.m
//  LoveLife
//
//  Created by like on 16/7/28.
//  Copyright © 2016年 CZsix. All rights reserved.
//

#import "LLNetworkTools.h"

@implementation LLNetworkTools

+ (instancetype)sharedManager{
    static LLNetworkTools *instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        //设置超时时间
        config.timeoutIntervalForRequest = 15;
        //设置基URL
        NSURL *url = [NSURL URLWithString:@"http://iosapi.itcast.cn/loveBeen/"];
        
        instance = [[self alloc]initWithBaseURL:url sessionConfiguration:config];
        instance.requestSerializer = [AFJSONRequestSerializer serializer];
        [instance.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
        //一次性设置最常见的5种情况
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/plain", nil];
        
    });

    return instance;
}


#pragma mark ---AFN的 公共 方法
- (void)requestWithMethod:(NSString *)method withURL:(NSString *)url withParameters:(NSDictionary *)parameters withSuccessBlock:(LLSuccessBlock)successBlock withErrorBlock:(LLErrorBlock)errorBlock{
   
    //post请求
    if ([method isEqualToString:@"POST"]) {
        [self POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            if (successBlock) {
                successBlock(task,responseObject);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (errorBlock) {
                errorBlock(error);
            }
        }];
        
    }
    
    //get请求
    if ([method isEqualToString:@"GET"]) {
        [self GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
           
            if (successBlock) {
                successBlock(task,responseObject);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (errorBlock) {
                errorBlock(error);
            }
        }];
    }
    
}

#pragma mark --- 获取首页数据
- (void)getHomeDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"focus.json.php";
    NSDictionary *param = @{@"call":@1};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
    
}


#pragma mark --- 获取首页新鲜热卖数据
- (void)getHomeHotSellDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"firstSell.json.php";
    NSDictionary *param = @{@"call":@2};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
    
}

#pragma mark --- 获取程序启动的广告
- (void)getAppStartADCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"ad.json.php";
    NSDictionary *param = @{@"call":@7};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}

#pragma mark --- 获取闪电超市数据
- (void)getSupermarketDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"supermarket.json.php";
    NSDictionary *param = @{@"call":@5};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}

#pragma mark --- 获取搜索最新关键词
- (void)getSearchNewKeyCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"search.json.php";
    NSDictionary *param = @{@"call":@6};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}


#pragma mark --- 获取搜索结果
- (void)getSearchDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"promotion.json.php";
    NSDictionary *param = @{@"call":@8};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}


#pragma mark --- 获取我的订单信息
- (void)getMyOrdersCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"MyOrders.json.php";
    NSDictionary *param = @{@"call":@13};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}



#pragma mark --- 获取我的优惠券信息
- (void)getMyCouponCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"MyCoupon.json.php";
    NSDictionary *param = @{@"call":@9};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}


#pragma mark --- 获取系统消息信息
- (void)getSystemMessageCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"SystemMessage.json.php";
    NSDictionary *param = @{@"call":@10};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}


#pragma mark --- 获取我的消息
- (void)getUserMessageCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"UserMessage.json.php";
    NSDictionary *param = @{@"call":@11};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}


#pragma mark --- 获取我的收货地址列表
- (void)getMyAdressCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock{
    
    //数据请求的参数
    NSString *method = @"POST";
    NSString *url = @"MyAdress.json.php";
    NSDictionary *param = @{@"call":@12};
    
    [self requestWithMethod:method withURL:url withParameters:param withSuccessBlock:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        if (successBlock) {
            successBlock(task,responseObject);
        }
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}








@end
