//
//  UIModule0Layout.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModuleCollectionViewCellLayout.h"
#import "UIModule2Model.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *kModule2CellReuseIdentifier;
@protocol UIModule2Layout <UIModuleCollectionViewCellLayout>
@property (nonatomic, weak) UIModule2Model *model;
@property (nonatomic, assign) CGRect nameRect;
@end

@interface UIModule2Layout : NSObject <UIModule2Layout>
@end

NS_ASSUME_NONNULL_END
