//
//  UIModuleCollectionViewCell.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModuleCollectionReusableView.h"
#import "UIModuleCollectionViewCellLayout.h"

@protocol UIModuleCollectionViewCell <UIModuleCollectionReusableView>
@optional
@property (nonatomic, weak) NSIndexPath *indexPath;
@end

