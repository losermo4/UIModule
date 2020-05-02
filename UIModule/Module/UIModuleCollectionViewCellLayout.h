//
//  UIModuleCollectionViewCellLayout.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModuleCollectionReusableViewLayout.h"
#import "UIModuleCollectionViewCellData.h"
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@protocol UIModuleCollectionReusableViewData;
@protocol UIModuleCollectionViewCellLayout <UIModuleCollectionReusableViewLayout>
@required
@property (nonatomic, copy) NSString *reuseIdentifier;
@property (nonatomic, assign) CGSize size;
@end



NS_ASSUME_NONNULL_END
