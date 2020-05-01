//
//  UIModule0CollectionViewCell.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIModuleCollectionViewCell.h"
#import "UIModule0Layout.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIModule0CollectionViewCell : UICollectionViewCell<UIModuleCollectionViewCell>
@end


@protocol UIModule0CollectionViewCellDelegate <NSObject>
@optional
- (void)module0Cell:(UIModule0CollectionViewCell *)module0Cell didSelected:(UIModule0Layout *)layout;
@end


NS_ASSUME_NONNULL_END
