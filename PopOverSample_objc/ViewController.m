//
//  ViewController.m
//  PopOverSample_objc
//
//  Created by 丸本聡 on 2020/01/04.
//  Copyright © 2020 丸本聡. All rights reserved.
//

#import "ViewController.h"
#import "HogeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    if([[NSUserDefaults standardUserDefaults] boolForKey:@"firstLaunch"]){
        HogeViewController *hogeViewController = [[HogeViewController alloc] init];
        [self presentPopOverWithViewController:hogeViewController sourceView:_searchbar];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"firstLaunch"];
        NSLog(@"初回起動");
    } else {
        NSLog(@"初回起動ではない");
    }
}


- (void)presentPopOverWithViewController:(UIViewController *)viewController sourceView:(UIView *)sourceView
{
    viewController.modalPresentationStyle = UIModalPresentationPopover;
    viewController.preferredContentSize = CGSizeMake(300, 50);

    UIPopoverPresentationController *presentationController = viewController.popoverPresentationController;
    presentationController.delegate = self;
    presentationController.permittedArrowDirections = UIPopoverArrowDirectionUp;
    presentationController.sourceView = sourceView;
    presentationController.sourceRect = sourceView.bounds;
    UIColor *color = [UIColor blackColor];
    UIColor *acolor = [color colorWithAlphaComponent:0.5];
    presentationController.backgroundColor = acolor;

    [self presentViewController:viewController animated:YES completion:NULL];
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    return UIModalPresentationNone;
}
@end
