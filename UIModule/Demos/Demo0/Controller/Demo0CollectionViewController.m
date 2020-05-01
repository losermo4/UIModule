//
//  Demo0CollectionViewController.m
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import "Demo0CollectionViewController.h"
#import "Demo0Layout.h"
#import "UIModule.h"
#import "Demo0Service.h"

@interface Demo0CollectionViewController ()<UICollectionViewDelegateFlowLayout, UIModule0CollectionViewCellDelegate, UIModule1CollectionViewCellDelegate, UIModule2CollectionViewCellDelegate>

@property (nonatomic, strong) Demo0Layout *layout;

@end

@implementation Demo0CollectionViewController

- (void)dealloc {
    NSLog(@"释放了 Demo0CollectionViewController");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubviews];
    [self getData];
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.layout.layouts.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    id <UIModuleCollectionViewCellLayout> layout = self.layout.layouts[indexPath.section];
    id <UIModuleCollectionViewCell> cell = [collectionView dequeueReusableCellWithReuseIdentifier:layout.reuseIdentifier forIndexPath:indexPath];
    [cell update:layout];
    cell.delegate = self;
    cell.indexPath = indexPath;
    return (UICollectionViewCell *)cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return self.layout.layouts[indexPath.section].size;
}

#pragma mark -

- (void)module0Cell:(UIModule0CollectionViewCell *)module0Cell didSelected:(UIModule1Layout *)layout {
    NSLog(@"%@", layout.model.name);
}

- (void)module1Cell:(UIModule1CollectionViewCell *)module1Cell didSelected:(id<UIModule1Layout>)layout indexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@ %@", layout.model.name, indexPath);
}

- (void)module2Cell:(UIModule2CollectionViewCell *)module0Cell didSelected:(id<UIModule2Layout>)layout {
    NSLog(@"%@", layout.model.name);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)getData {
    [Demo0Service loadDataSuccess:^(Demo0Layout * _Nonnull layout) {
        self.layout = layout;
        [self.collectionView reloadData];
    } failure:^(NSError * _Nonnull error) {
        
    }];
}

- (void)setupSubviews {
    self.view.backgroundColor = [UIColor whiteColor];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[UIModule0CollectionViewCell class] forCellWithReuseIdentifier:kModule0CellReuseIdentifier];
    [self.collectionView registerClass:[UIModule1CollectionViewCell class] forCellWithReuseIdentifier:kModule1CellReuseIdentifier];
    [self.collectionView registerClass:[UIModule2CollectionViewCell class] forCellWithReuseIdentifier:kModule2CellReuseIdentifier];
}


@end
