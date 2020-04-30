//
//  UIModuleCollectionViewCellLayout.h
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@protocol UIModuleData;
@protocol UIModuleCollectionViewCellLayout <NSObject>
@required
@property (nonatomic, copy) NSString *reuseIdentifier;
@property (nonatomic, assign) CGSize size;
- (void)layout;
@optional
@property (nonatomic, strong) id <UIModuleData> data;
@end



NS_ASSUME_NONNULL_END
