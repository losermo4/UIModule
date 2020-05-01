//
//  UIModule0CollectionViewCell.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIModuleCollectionViewCell.h"
#import "UIModule1Layout.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIModule1CollectionViewCell : UICollectionViewCell<UIModuleCollectionViewCell>
@end


@protocol UIModule1CollectionViewCellDelegate <NSObject>
@optional
- (void)module1Cell:(UIModule1CollectionViewCell *)module1Cell didSelected:(id <UIModule1Layout>)layout indexPath:(NSIndexPath *)indexPath;
@end


NS_ASSUME_NONNULL_END
