//
//  UIModule0CollectionViewCell.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIModuleCollectionViewCell.h"
#import "UIModule2Layout.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIModule2CollectionViewCell : UICollectionViewCell<UIModuleCollectionViewCell>
@end


@protocol UIModule2CollectionViewCellDelegate <NSObject>
@optional
- (void)module2Cell:(UIModule2CollectionViewCell *)module0Cell didSelected:(id <UIModule2Layout>)layout;
@end


NS_ASSUME_NONNULL_END
