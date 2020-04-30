//
//  UIModule0Layout.m
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import "UIModule1Layout.h"
#import "UIModuleMacro.h"

NSString * kModule1CellReuseIdentifier = @"kModule1CellReuseIdentifier";

@implementation UIModule1Layout
@synthesize size;
@synthesize nameRect;
@synthesize data;
@synthesize model;
@synthesize reuseIdentifier;

- (void)layout {
    self.model = self.data;
    self.reuseIdentifier = kModule1CellReuseIdentifier;
    self.nameRect = CGRectMake(0, 0, kScreenWidth, 40);
    self.size = CGSizeMake(kScreenWidth, 40);
}

@end
