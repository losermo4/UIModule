//
//  UIModule0CollectionViewCell.m
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import "UIModule1CollectionViewCell.h"


@interface UIModule1CollectionViewCell ()

@property (nonatomic, weak) id <UIModule1Layout> layout;
@property (nonatomic, strong) UILabel *textLabel;

@end


@implementation UIModule1CollectionViewCell
@synthesize delegate;
@synthesize indexPath;

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (void)onClick {
    id delegate = self.delegate;
    if (delegate && [delegate respondsToSelector:@selector(module1Cell:didSelected:indexPath:)]) {
        [delegate module1Cell:self didSelected:self.layout indexPath:self.indexPath];
    }
}

- (void)update:(id<UIModuleCollectionViewCellLayout>)cellLayout {
    if (self.layout == cellLayout) return;
    self.layout = (id)cellLayout;
    self.textLabel.text = self.layout.model.name;
    self.textLabel.frame = self.layout.nameRect;
}

- (void)setupSubviews {
    [self.contentView addSubview:self.textLabel];
    [self.contentView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClick)]];
}

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [UILabel new];
    }
    return _textLabel;
}


@end
