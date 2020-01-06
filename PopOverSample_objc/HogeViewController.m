//
//  HogeViewController.m
//  PopOverSample_objc
//
//  Created by 丸本聡 on 2020/01/04.
//  Copyright © 2020 丸本聡. All rights reserved.
//

#import "ViewController.h"
#import "HogeViewController.h"

@interface HogeViewController ()

@property(nonatomic)UILabel *label;

@end

@implementation HogeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"height:%f width:%f", self.view.frame.size.height,self.view.frame.size.width);
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, 300, 40);
    label.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    label.text = @"まずはエリア、時給、職種などを設定";
    label.textColor = UIColor.whiteColor;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview: label];
}

@end
