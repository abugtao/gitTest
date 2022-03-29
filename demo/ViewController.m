//
//  ViewController.m
//  demo
//
//  Created by EGO on 2018/1/3.
//  Copyright © 2018年 zhanghaitao. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()<TestViewDataSource>
@property (nonatomic,strong) TestView * testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"haha";
    self.title = @"12345";

    self.title = @"master";

    self.title = @"test";
    
    self.title = @"master1";
    self.title = @"master2";
    self.title = @"test1";
    self.title = @"test2";
    UIButton *leftItemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftItemButton setBackgroundImage:[UIImage imageNamed:@"ha"] forState:UIControlStateNormal];
    leftItemButton.frame = CGRectMake(0, 0, 30, 30);
    if ([[[UIDevice currentDevice] systemVersion] floatValue]>=11) {
        [leftItemButton.widthAnchor constraintEqualToConstant:30].active = YES;
        [leftItemButton.heightAnchor constraintEqualToConstant:30].active = YES;
    }
    leftItemButton.layer.cornerRadius = 15;
    leftItemButton.layer.masksToBounds = YES;
    [leftItemButton addTarget:self action:@selector(leftItemButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftItemButton];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    
    _testView = [[TestView alloc] initWithFrame:CGRectMake(0, 100, 200, 100)];
    _testView.dataSource = self;
    [self.view addSubview:_testView];
    
    
    
}

-(NSArray *)valuesofTestView:(TestView *)testView{
    return @[@"aaa"];
}

- (void)leftItemButtonAction:(UIButton *)btn{
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
//    [self.testView addSubview:view];
    
    
    self.testView.frame = CGRectMake(0, 200, 100, 100);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
