//
//  Demo0Layout.h
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModule.h"
#import "Demo0Model.h"

NS_ASSUME_NONNULL_BEGIN

@interface Demo0Layout : NSObject

@property (nonatomic, strong) Demo0Model *model;
@property (nonatomic, strong) NSArray <id <UIModuleCollectionViewCellLayout>> *layouts;
- (void)layout;

@end

NS_ASSUME_NONNULL_END
