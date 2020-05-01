//
//  UIModuleView.h
//  UIModule
//
//  Created by 高敏 on 2020/5/2.
//  Copyright © 2020 loser. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UIModuleView <NSObject>
@optional
@property (nonatomic, weak) id <NSObject> delegate;
@end

