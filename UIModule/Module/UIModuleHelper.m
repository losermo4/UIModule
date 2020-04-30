//
//  UIModuleHelper.m
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import "UIModuleHelper.h"

@implementation UIModuleHelper

+ (id<UIModuleCollectionViewCellLayout>)layoutWithType:(NSString *)type data:(id<UIModuleData>)data {
    id <UIModuleCollectionViewCellLayout> cellLayout;
    BOOL isIgnoreDataType = [[self ignoreEmptyDataTypes] containsObject:type];
    if (!data && !isIgnoreDataType) {
        NSAssert(YES, @"空数据");
        return cellLayout;
    }
    if (!isIgnoreDataType && ![data conformsToProtocol:@protocol(UIModuleData)]) {
        NSAssert(YES, @"未定义的UIModule数据类型");
        return cellLayout;
    }
    NSInteger typeNumber = type.integerValue;
    switch (typeNumber) {
        case 1:
        {
            cellLayout = [UIModule0Layout new];
            cellLayout.data = data;
            [cellLayout layout];
        }
            break;
        case 2:
        {
            cellLayout = [UIModule1Layout new];
            cellLayout.data = data;
            [cellLayout layout];
        }
            break;
        case 3:
        {
            cellLayout = [UIModule2Layout new];
            cellLayout.data = data;
            [cellLayout layout];

        }
            break;
        default:
            NSAssert(YES, @"未定义类型");
            break;
    }
    
    return cellLayout;
}

+ (NSArray *)ignoreEmptyDataTypes {
    static NSArray *types;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        types = @[@"5", @"6", @"7"];
    });
    return types;
}

@end
