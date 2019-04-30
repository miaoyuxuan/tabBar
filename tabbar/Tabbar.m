//
//  Tabbar.m
//  tabbar
//
//  Created by gagakj on 2019/4/29.
//  Copyright © 2019 gagakj. All rights reserved.
//

#import "Tabbar.h"

@interface Tabbar()

/**发布按钮*/
@property (nonatomic, weak) UIButton *publishButton;



@end

@implementation Tabbar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {

        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        // 设置图片
        [publishButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        
        // 设置高亮图片
        [publishButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        
        // 设置背景图片
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        
        // 按钮添加到控制器view中
        [self addSubview:publishButton];
        
        // 将publishButton 添加为属性
        self.publishButton = publishButton;
        
    }
    return self;
}


-(void)layoutSubviews {
    [super layoutSubviews];
    
    // 设置发布的按钮位置
    self.publishButton.frame = CGRectMake(0, 0, self.publishButton.currentBackgroundImage.size.width, self.publishButton.currentBackgroundImage.size.height);
    
    // 将自定义按钮放到中间
    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    // 让发布按钮处于tabbar的最上层,以免被覆盖无法响应点击事件
    [self bringSubviewToFront:_publishButton];
}

@end
