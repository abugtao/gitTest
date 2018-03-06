//
//  TestView.h
//  demo
//
//  Created by EGO on 2018/3/1.
//  Copyright © 2018年 zhanghaitao. All rights reserved.
//


@class TestView;
#import <UIKit/UIKit.h>

@protocol TestViewDataSource
- (NSArray *)valuesofTestView:(TestView *)testView;
@end


@interface TestView : UIView
-(instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic,weak) id dataSource;
@end
