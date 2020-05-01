//
//  UIModule0Layout.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModuleCollectionViewCellLayout.h"
#import "UIModule0Model.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *kModule0CellReuseIdentifier;
@interface UIModule0Layout : NSObject <UIModuleCollectionViewCellLayout>
@property (nonatomic, weak) UIModule0Model *model;
@property (nonatomic, assign) CGRect nameRect;
@end

NS_ASSUME_NONNULL_END
