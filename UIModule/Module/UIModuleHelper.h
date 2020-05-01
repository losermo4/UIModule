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

@end


@interface UIModuleHelper (UICollectionViewHelper)

/// 根据CellType获取 cellLayout
+ (id <UIModuleCollectionViewCellLayout>)cellLayoutWithCellType:(NSString *)cellType cellData:(id<UIModuleCollectionViewCellData>)cellData;
/// 特殊类型的 不需要数据源
+ (NSArray *)ignoreEmptyCellDataToCellTypes;
/// 根据cellType 获取数据模型class
+ (Class)moduleDataClassWithCellType:(NSString *)cellType;

@end


NS_ASSUME_NONNULL_END
