//
//  Demo0Model.m
//  UIModule
//
//  Created by 高敏 on 2020/5/1.
//  Copyright © 2020 loser. All rights reserved.
//

#import "Demo0Model.h"

@implementation Demo0Model

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"section0"         : [Demo0Item0Model class],
             @"section1" : [Demo0Item1Model class],
             @"section2" : [Demo0Item2Model class]
             };
}


@end


@implementation Demo0Item0Model

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
        @"item":[UIModule0Model class]
    };
}


@end


@implementation Demo0Item1Model

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
        @"item":[Demo0Item1DataModel class]
    };
}


@end

@implementation Demo0Item1DataModel


@end



@implementation Demo0Item2Model

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
        @"item":[Demo0Item2DataModel class]
    };
}


@end


@implementation Demo0Item2DataModel


@end
