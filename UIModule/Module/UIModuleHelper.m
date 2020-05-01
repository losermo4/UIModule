//
//  UIModuleHelper.m
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import "UIModuleHelper.h"

@implementation UIModuleHelper


@end



@implementation UIModuleHelper (UICollectionViewHelper)

+ (id <UIModuleCollectionViewCellLayout>)cellLayoutWithCellType:(NSString *)cellType cellData:(id<UIModuleCollectionViewCellData>)cellData {
    id <UIModuleCollectionViewCellLayout> cellLayout;
    BOOL isIgnoreDataType = [[self ignoreEmptyCellDataToCellTypes] containsObject:cellType];
    if (!cellData && !isIgnoreDataType) {
        NSAssert(YES, @"空数据");
        return cellLayout;
    }
    if (!isIgnoreDataType && ![cellData conformsToProtocol:@protocol(UIModuleCollectionViewCellData)]) {
        NSAssert(YES, @"未定义的UIModule数据类型");
        return cellLayout;
    }
    NSInteger typeNumber = cellType.integerValue;
    switch (typeNumber) {
        case 1:
        {
            cellLayout = [UIModule0Layout new];
            cellLayout.data = cellData;
            [cellLayout layout];
        }
            break;
        case 2:
        {
            cellLayout = [UIModule1Layout new];
            cellLayout.data = cellData;
            [cellLayout layout];
        }
            break;
        case 3:
        {
            cellLayout = [UIModule2Layout new];
            cellLayout.data = cellData;
            [cellLayout layout];

        }
            break;
        default:
            NSAssert(YES, @"未定义类型");
            break;
    }
    
    return cellLayout;

}

+ (NSArray *)ignoreEmptyCellDataToCellTypes {
    static NSArray *types;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        types = @[@"5", @"6", @"7"];
    });
    return types;
}

+ (Class)moduleDataClassWithCellType:(NSString *)cellType {
    NSInteger type = cellType.integerValue;
    switch (type) {
        case 1:
            return [UIModule0Model class];
            break;
        case 2:
            return [UIModule1Model class];
            break;
        case 3:
            return [UIModule2Model class];
            break;
        default:
            NSAssert(YES, @"未定义的UIModule数据类型");
            return [NSObject class];
            break;
    }
}

@end
