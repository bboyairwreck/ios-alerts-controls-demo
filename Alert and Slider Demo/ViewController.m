//
//  ViewController.m
//  Alert and Slider Demo
//
//  Created by Eric Chee on 3/17/15.
//  Copyright (c) 2015 Cheebros. All rights reserved.
//


#import "ViewController.h"
#import "UIView+ECAutoLayout.h"
#import "AlertViewController.h"


@interface ViewController ()

@property (strong, nonatomic) UIButton *lastButton;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *buttonContainer = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x,
            self.view.center.y,
            self.view.frame.size.width,
            300.0f)];
    buttonContainer.center = self.view.center;
    [self.view addSubview:buttonContainer];

    [self addButtonWithTitle:[self alertTitle] toView:buttonContainer];
    [self addButtonWithTitle:@"Button 2" toView:buttonContainer];
}

- (void) addButtonWithTitle:(NSString *)title
                     toView:(UIView *)view
{
    UIButton *alertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [alertButton setTitle:title forState:UIControlStateNormal];

    [alertButton sizeToFit];


    [alertButton addTarget:self
                    action:@selector(buttonAction:)
          forControlEvents:UIControlEventTouchUpInside];

    NSMutableArray *constraints = [[NSMutableArray alloc] init];
    [constraints addObject:[view centerXView:alertButton withAncestor:view]];

    if (self.lastButton != nil) {
        [constraints addObject:[view bottomAlignView:alertButton belowSibling:self.lastButton]];
    } else {
        [constraints addObject:[view centerYView:alertButton withAncestor:view]];
    }

    [view addSubview:alertButton];

    [view addConstraints:constraints];

    self.lastButton = alertButton;
}


- (void)buttonAction:(UIButton *)sender {
    NSString *buttonTitle = [sender titleForState:UIControlStateNormal];

    NSLog(@"Button clicked %@", buttonTitle);

    // Pressed Yes btn
    if ([buttonTitle isEqualToString:[self alertTitle]]) {
        AlertViewController *alertViewController = [[AlertViewController alloc] initWithNibName:nil bundle:NULL];
        [self.navigationController pushViewController:alertViewController animated:YES];
    }
        // Pressed No btn
    else if ([buttonTitle isEqualToString:@"Button 2"]) {
        NSLog(@"User pressed No");
    }
}

- (NSString *)alertTitle {
    return @"Alert Demo";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end