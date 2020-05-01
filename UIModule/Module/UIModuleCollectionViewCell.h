//
//  UIModuleCollectionViewCell.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIModuleCollectionViewCellLayout.h"

@protocol UIModuleCollectionViewCell <NSObject>
@optional
@property (nonatomic, weak) id <NSObject> delegate;
- (void)update:(id <UIModuleCollectionViewCellLayout>)cellLayout;
@property (nonatomic, weak) NSIndexPath *indexPath;
@end

