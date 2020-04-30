//
//  Demo0Service.m
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import "Demo0Service.h"

@implementation Demo0Service

+ (void)loadDataSuccess:(void (^)(Demo0Layout * _Nonnull))success
                failure:(void (^)(NSError * _Nonnull))failure {
   
    NSDictionary *map = @{
        @"page" : @"1",
        @"data" : @[
        @{
            @"type" : @"1",
            @"item" : @{
                    @"name" : @"我是type 1"
            }
        },
        @{
            @"type" : @"2",
            @"item" : @{
                    @"name" : @"我是type 2"
            }
        },
        @{
           @"type" : @"3",
           @"item" : @{
                    @"name" : @"我是type 3"
            }

        }
          ]
    };
    Demo0Model *model = Demo0Model.new;
    model.page = map[@"page"];
    
    NSArray *data = map[@"data"];
    Demo0Item0Model *section0 = [Demo0Item0Model new];
    section0.type = data[0][@"type"];
    UIModule0Model *module0 = [UIModule0Model new];
    module0.name = data[0][@"item"][@"name"];
    section0.item = module0;
    model.section0 = section0;
    
    Demo0Item1Model *section1 = [Demo0Item1Model new];
    section1.type = data[1][@"type"];
    Demo0Item1DataModel *module1 = [Demo0Item1DataModel new];
    module1.name = data[1][@"item"][@"name"];
    section1.item = module1;
    model.section1 = section1;

    Demo0Item2Model *section2 = [Demo0Item2Model new];
    section2.type = data[2][@"type"];
    Demo0Item2DataModel *module2 = [Demo0Item2DataModel new];
    module2.name = data[2][@"item"][@"name"];
    section2.item = module2;
    model.section2 = section2;
    
    Demo0Layout *layout = [Demo0Layout new];
    layout.model = model;
    [layout layout];
    if (success) {
        success(layout);
    }
    
}

@end
