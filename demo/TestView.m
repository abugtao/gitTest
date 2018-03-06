//
//  TestView.m
//  demo
//
//  Created by EGO on 2018/3/1.
//  Copyright © 2018年 zhanghaitao. All rights reserved.
//

#import "TestView.h"
#import "MyscrollView.h"
@interface TestView()
@property (nonatomic,strong) NSArray * dataArray;
@end

@implementation TestView
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        
        MyscrollView *scrollView = [[MyscrollView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        scrollView.backgroundColor = [UIColor yellowColor];
        scrollView.contentSize = CGSizeMake(100, 300);
        [self addSubview:scrollView];
    }
    return self;
}


-(void)setDataSource:(id)dataSource{
    _dataSource = dataSource;
    if ([_dataSource respondsToSelector:@selector(valuesofTestView:)]) {
        
        self.dataArray = [_dataSource valuesofTestView:self];
    }
    
}



-(void)layoutSubviews{
    [super layoutSubviews];
    
    
}

-(void)reloadInputViews{
    [super reloadInputViews];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
