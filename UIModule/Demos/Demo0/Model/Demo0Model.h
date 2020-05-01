//
//  Demo0Model.h
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModule0Model.h"

/// 后台返回数据模型
NS_ASSUME_NONNULL_BEGIN

@class Demo0Item0Model, Demo0Item1Model, Demo0Item2Model;
@interface Demo0Model : NSObject
@property (nonatomic, copy) NSString *page;
@property (nonatomic, strong) Demo0Item0Model *section0;
@property (nonatomic, strong) Demo0Item1Model *section1;
@property (nonatomic, strong) Demo0Item2Model *section2;
@end




@interface Demo0Item0Model : NSObject
@property (nonatomic, copy) NSString *type;
/// sectionHeader
/// content /// 用数组？
@property (nonatomic, strong) UIModule0Model *item;
/// sectionFooter
@end





@class Demo0Item1DataModel;
@interface Demo0Item1Model : NSObject
@property (nonatomic, copy) NSString *type;
@property (nonatomic, strong) Demo0Item1DataModel *item;
@end
@interface Demo0Item1DataModel : NSObject
@property (nonatomic, copy) NSString *name;
@end




@class Demo0Item2DataModel;
@interface Demo0Item2Model : NSObject
@property (nonatomic, copy) NSString *type;
@property (nonatomic, strong) Demo0Item2DataModel *item;
@end
@interface Demo0Item2DataModel : NSObject
@property (nonatomic, copy) NSString *name;
@end



NS_ASSUME_NONNULL_END
