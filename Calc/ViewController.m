//
//  ViewController.m
//  Calc
//
//  Created by Mohan, Kishore Kumar on 6/26/14.
//  Copyright (c) 2014 objc. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

// private interface
@interface ViewController ()
@property (nonatomic) BOOL isUserInTheMiddleOfEnteringNumber;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.display.layer setCornerRadius:5];
    //self.display.layer.borderColor = [UIColor grayColor].CGColor;
    //self.display.layer.borderWidth = 1.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    if(self.isUserInTheMiddleOfEnteringNumber) {
        self.display.text = [self.display.text stringByAppendingString:digit];
    } else {
        self.display.text = digit;
        self.isUserInTheMiddleOfEnteringNumber = YES;
    }
}

- (IBAction)operationPressed:(UIButton *)sender {
    operatorPressed = YES;
    firstEntry = self.display.text;
    op = [sender currentTitle];
    self.isUserInTheMiddleOfEnteringNumber = NO;
}

- (IBAction)equalsPressed:(id)sender {
    self.isUserInTheMiddleOfEnteringNumber = NO;
    secondEntry = self.display.text;

    if ([op isEqualToString:@"+"]) {
        self.display.text = [NSString stringWithFormat:@"%.2f", [firstEntry doubleValue] + [secondEntry doubleValue]];
    } else if([op isEqualToString:@"-"]) {
        self.display.text = [NSString stringWithFormat:@"%f", [firstEntry doubleValue] - [secondEntry doubleValue]];
    } else if([op isEqualToString:@"x"]) {
        self.display.text = [NSString stringWithFormat:@"%f", [firstEntry doubleValue] * [secondEntry doubleValue]];
    } else if([op isEqualToString:@"/"]) {
        self.display.text = [NSString stringWithFormat:@"%f", [firstEntry doubleValue] / [secondEntry doubleValue]];
    }
}

- (IBAction)clearPressed:(id)sender {
    self.display.text = @"0";
    self.isUserInTheMiddleOfEnteringNumber = NO;
}

- (IBAction)dotPressed:(id)sender {
}
@end
