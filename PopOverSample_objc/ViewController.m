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

- (IBAction)buttonDidPush:(id)sender
{
    HogeViewController *hogeViewController = [[HogeViewController alloc] init];
    [self presentPopOverWithViewController:hogeViewController sourceView:_button];
}

- (void)presentPopOverWithViewController:(UIViewController *)viewController sourceView:(UIView *)sourceView
{
    viewController.modalPresentationStyle = UIModalPresentationPopover;
    viewController.preferredContentSize = CGSizeMake(100.0, 100.0);

    UIPopoverPresentationController *presentationController = viewController.popoverPresentationController;
    presentationController.delegate = self;
    presentationController.permittedArrowDirections = UIPopoverArrowDirectionUp;
    presentationController.sourceView = sourceView;
    presentationController.sourceRect = sourceView.bounds;

    [self presentViewController:viewController animated:YES completion:NULL];
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    return UIModalPresentationNone;
}
@end
