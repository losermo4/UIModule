//
//  UIModule0Layout.m
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import "UIModule0Layout.h"
#import "UIModuleMacro.h"

NSString * kModule0CellReuseIdentifier = @"kModule0CellReuseIdentifier";

@implementation UIModule0Layout
@synthesize size;
@synthesize data;
@synthesize reuseIdentifier;

- (void)layout {
    self.model = (id)self.data;
    self.reuseIdentifier = kModule0CellReuseIdentifier;
    self.nameRect = CGRectMake(0, 0, kScreenWidth, 40);
    self.size = CGSizeMake(kScreenWidth, 40);
}

@end
