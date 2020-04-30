//
//  ViewController.m
//  UIModule
//
//  Created by 高敏 on 2020/4/30.
//  Copyright © 2020 loser. All rights reserved.
//

#import "ViewController.h"
#import "Demo0CollectionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)onClick {
    Demo0CollectionViewController *demo = [[Demo0CollectionViewController alloc] initWithCollectionViewLayout:[UICollectionViewFlowLayout new]];
    [self presentViewController:demo animated:YES completion:nil];
}


@end
