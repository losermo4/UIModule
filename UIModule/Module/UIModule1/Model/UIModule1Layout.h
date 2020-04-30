//
//  UIModule0Layout.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModuleCollectionViewCellLayout.h"
#import "UIModule1Model.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *kModule1CellReuseIdentifier;
@protocol UIModule1Layout <UIModuleCollectionViewCellLayout>
@property (nonatomic, strong) UIModule1Model *model;
@property (nonatomic, assign) CGRect nameRect;
@end

@interface UIModule1Layout : NSObject <UIModule1Layout>
@end

NS_ASSUME_NONNULL_END
