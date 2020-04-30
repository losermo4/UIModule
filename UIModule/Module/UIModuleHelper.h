//
//  UIModuleHelper.h
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModule.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIModuleHelper : NSObject

+ (id <UIModuleCollectionViewCellLayout>)layoutWithType:(NSString *)type data:(id<UIModuleData>)data;

+ (NSArray *)ignoreEmptyDataTypes;

@end

NS_ASSUME_NONNULL_END
