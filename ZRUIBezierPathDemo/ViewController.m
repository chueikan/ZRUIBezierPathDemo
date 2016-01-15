//
//  ViewController.m
//  ZRUIBezierPathDemo
//
//  Created by van7ish on 16/1/15.
//  Copyright © 2016年 van7ish. All rights reserved.
//

#import "ViewController.h"
#import "BezierView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    BezierView *view = [[BezierView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}
@end
