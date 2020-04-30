//
//  Demo0Layout.m
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import "Demo0Layout.h"
#import "UIModuleHelper.h"

@implementation Demo0Layout

- (void)layout {
    NSMutableArray *layouts = [NSMutableArray array];
    /// 后台数据字段一致时 不需要转换
    Demo0Item0Model *section0 = self.model.section0;
    id <UIModuleCollectionViewCellLayout> cellLayout0 = [UIModuleHelper layoutWithType:section0.type data:section0.item];
    if (cellLayout0) {
        [layouts addObject:cellLayout0];
    }
    
    /// 数据字段不一致时，做一层转换
    Demo0Item1Model *section1 = self.model.section1;
    UIModule1Model *item1 = [UIModule1Model new];
    item1.name = section1.item.name;
    id <UIModuleCollectionViewCellLayout> cellLayout1 = [UIModuleHelper layoutWithType:section1.type data:item1];
    if (cellLayout1) {
        [layouts addObject:cellLayout1];
    }

    /// 数据字段不一致时，做一层转换
    Demo0Item2Model *section2 = self.model.section2;
    UIModule2Model *item2 = [UIModule2Model new];
    item2.name = section2.item.name;
    id <UIModuleCollectionViewCellLayout> cellLayout2 = [UIModuleHelper layoutWithType:section2.type data:item2];
    if (cellLayout2) {
        [layouts addObject:cellLayout2];
    }
    self.layouts = layouts.copy;
}

@end
