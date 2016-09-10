//
//  LLNetworkTools.h
//  LoveLife
//
//  Created by like on 16/7/28.
//  Copyright © 2016年 CZsix. All rights reserved.
//

//采用pod 用 #import <AFNetworking/AFNetworking.h>
#import "AFNetworking/AFNetworking.h"

typedef void (^LLSuccessBlock)(NSURLSessionDataTask *task, NSDictionary *responseObject);
typedef void (^LLErrorBlock)(NSError *error);

@interface LLNetworkTools : AFHTTPSessionManager

//单例
+ (instancetype)sharedManager;


/**
 *  获取首页数据
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getHomeDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;


/**
 *  获取首页新鲜热卖数据
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getHomeHotSellDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;


/**
 *  获取程序启动的广告
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getAppStartADCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;

/**
 *  获取闪电超市数据
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getSupermarketDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;


/**
 *  获取搜索最新关键词
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getSearchNewKeyCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;

/**
 *  获取搜索结果
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getSearchDataCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;

/**
 *  获取我的订单信息
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getMyOrdersCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;

/**
 *  获取我的优惠券信息
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getMyCouponCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;
    
/**
 *  获取系统消息信息
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getSystemMessageCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;

/**
 *  获取我的消息
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getUserMessageCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;

/**
 *  获取我的收货地址列表
 *
 *  @param successBlock 成功回调
 *  @param errorBlock   失败回调
 */
- (void)getMyAdressCompletionBlockWithSuccess:(LLSuccessBlock)successBlock andFailure:(LLErrorBlock)errorBlock;

@end
