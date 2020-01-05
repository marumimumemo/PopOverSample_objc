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

    self.label.frame = CGRectMake(0, 100, 250, 100);
    _label.text = @"まずはエリア、時給、職種などを設定";
    _label.textColor = UIColor.blackColor;
    _label.textAlignment = NSTextAlignmentCenter;
    _label.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview: _label];
}

@end
