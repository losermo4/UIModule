//
//  UIModuleViewLayout.h
//  UIModule
//
//  Created by 高敏 on 2020/5/2.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModuleViewData.h"


@protocol UIModuleViewLayout <NSObject>
@optional
@property (nonatomic, strong) id <UIModuleViewData> data;
- (void)layout;
@end
