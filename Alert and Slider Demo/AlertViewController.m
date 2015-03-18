//
// Created by Eric Chee on 3/17/15.
// Copyright (c) 2015 Cheebros. All rights reserved.
//

#import "AlertViewController.h"


@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *alertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [alertButton setTitle:@"Show Alert" forState:UIControlStateNormal];

    [alertButton sizeToFit];
    alertButton.center = self.view.center;

    [alertButton addTarget:self
                    action:@selector(showAlert:)
          forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:alertButton];
}

- (void) showAlert:(id)sender
{
    NSString *alertMsg = @"This is an alert msg. You okay?";

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert Title"
                                                        message:alertMsg
                                                       delegate:self
                                              cancelButtonTitle:[self noButtonTitle] otherButtonTitles:[self yesButtonTitle], nil];
    [alertView show];
}

- (NSString *) yesButtonTitle { return @"YES"; }
- (NSString *) noButtonTitle { return @"NO"; }

#pragma mark - Override
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];

    // Pressed Yes btn
    if ([buttonTitle isEqualToString:[AlertViewController title]]) {
        NSLog(@"User pressed Alert");
    }
        // Pressed No btn
    else if ([buttonTitle isEqualToString:[self noButtonTitle]]) {
        NSLog(@"User pressed No");
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end