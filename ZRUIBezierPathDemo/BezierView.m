//
//  BezierView.m
//  ZRUIBezierPathDemo
//
//  Created by van7ish on 16/1/15.
//  Copyright © 2016年 van7ish. All rights reserved.
//

#import "BezierView.h"

@implementation BezierView

- (void)drawRect:(CGRect)rect{
    //画直线
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint:CGPointMake(100, 100)];
    [bezierPath addLineToPoint:CGPointMake(200, 100)];
    [bezierPath addLineToPoint:CGPointMake(200, 200)];
    [bezierPath addLineToPoint:CGPointMake(150, 250)];
    [bezierPath closePath];
    [bezierPath stroke];

    
    //画圆
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    //圆心-半径-起始角度-end角度-是否顺时针
    [path2 addArcWithCenter:self.center radius:100 startAngle:0 endAngle:180 clockwise:YES];
    [path2 setLineWidth:5];
    [[UIColor blueColor] setStroke];
    [[UIColor redColor] setFill];
    [path2 stroke];
    [path2 fill];

    
    //二阶贝塞尔曲线（包含起始点，终点，一个控制点）
    UIBezierPath *path3 = [UIBezierPath bezierPath];
    //起始点
    [path3 moveToPoint:CGPointMake(100, 20)];
    //终点-控制点
    [path3 addQuadCurveToPoint:CGPointMake(200, 20) controlPoint:CGPointMake(120, 180)];
    [path3 setLineWidth:5];
    [path3 setLineCapStyle:kCGLineCapRound];
    [path3 setLineJoinStyle:kCGLineJoinMiter];
    [[UIColor brownColor] setStroke];
    [path3 stroke];
    
    
    //三阶贝塞尔曲线（包含起始点，终点，两个控制点）
    UIBezierPath *path4 = [UIBezierPath bezierPath];
    //起始点
    [path4 moveToPoint:CGPointMake(100, 50)];
    //终点-第一个控制点-第二个控制点
    [path4 addCurveToPoint:CGPointMake(100, 550) controlPoint1:CGPointMake(0, 200) controlPoint2:CGPointMake(200, 400)];
    [[UIColor cyanColor] setStroke];
    [path4 setLineWidth:10];
    [path4 stroke];
 
}

@end
