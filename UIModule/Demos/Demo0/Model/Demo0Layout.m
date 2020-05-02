//
//  Demo0Layout.m
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import "Demo0Layout.h"
#import "UIModuleHelper.h"
#import "NSObject+YYModel.h"

#define USE_DEFAULT_JSON 1

@implementation Demo0Layout

- (void)layout {
    
#if USE_DEFAULT_JSON
    
    NSArray *dataList = self.map[@"data"];
    NSMutableArray *layouts = [NSMutableArray array];
    for (NSInteger i = 0; i < dataList.count; i++) {
        NSDictionary *section = dataList[i];
        NSString *type = section[@"type"];
        id itemData = section[@"item"];
        Class cls = [UIModuleHelper moduleDataClassWithCellType:type];
        id <UIModuleCollectionViewCellData> cellData = [cls modelWithJSON:itemData];
        id <UIModuleCollectionViewCellLayout> cellLayout = [UIModuleHelper cellLayoutWithCellType:type cellData:cellData];
        if (!cellLayout) continue;/// 框架内不允许或者未定义 忽略
        [layouts addObject:cellLayout];
    }
    self.layouts = layouts.copy;
    
#else
    NSMutableArray *layouts = [NSMutableArray array];
    /// 后台数据字段一致时 不需要转换
    Demo0Item0Model *section0 = self.model.section0;
    id <UIModuleCollectionViewCellLayout> cellLayout0 = [UIModuleHelper cellLayoutWithCellType:section0.type cellData:section0.item];
    if (cellLayout0) {
        [layouts addObject:cellLayout0];
    }
    
    /// 数据字段不一致时，做一层转换
    Demo0Item1Model *section1 = self.model.section1;
    UIModule1Model *item1 = [UIModule1Model new];
    item1.name = section1.item.name;
    id <UIModuleCollectionViewCellLayout> cellLayout1 = [UIModuleHelper cellLayoutWithCellType:section1.type cellData:item1];
    if (cellLayout1) {
        [layouts addObject:cellLayout1];
    }

    /// 数据字段不一致时，做一层转换
    Demo0Item2Model *section2 = self.model.section2;
    UIModule2Model *item2 = [UIModule2Model new];
    item2.name = section2.item.name;
    id <UIModuleCollectionViewCellLayout> cellLayout2 = [UIModuleHelper cellLayoutWithCellType:section2.type cellData:item2];
    if (cellLayout2) {
        [layouts addObject:cellLayout2];
    }
    self.layouts = layouts.copy;

#endif
}

@end
