//
//  MainViewController.m
//  tabbar
//
//  Created by gagakj on 2019/4/29.
//  Copyright © 2019 gagakj. All rights reserved.
//

#import "MainViewController.h"
#import "Tabbar.h"

@interface MainViewController ()

@property (nonatomic, strong) UIButton *composeBtn;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setValue:[[Tabbar alloc] init] forKey:@"tabBar"];
    
}




@end
