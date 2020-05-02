//
//  UIModuleViewDelegate.h
//  UIModule
//
//  Created by 高敏 on 2020/5/2.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIModuleView.h"
#import "UIModuleViewData.h"

@protocol UIModuleViewDelegate <NSObject>
@optional
- (void)moduleView:(id<UIModuleView>)moduleView didOnClick:(id<UIModuleViewData>)moduleData;
@end
