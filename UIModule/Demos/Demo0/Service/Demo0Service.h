//
//  Demo0Service.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Demo0Layout.h"

NS_ASSUME_NONNULL_BEGIN

@interface Demo0Service : NSObject

+ (void)loadDataSuccess:(void(^)(Demo0Layout *layout))success failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
