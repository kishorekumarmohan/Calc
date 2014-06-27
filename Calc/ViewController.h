//
//  ViewController.h
//  Calc
//
//  Created by Mohan, Kishore Kumar on 6/26/14.
//  Copyright (c) 2014 objc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSString *firstEntry;
    NSString *secondEntry;
    NSString *op;
    BOOL operatorPressed;
}

@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;
- (IBAction)equalsPressed:(id)sender;
- (IBAction)clearPressed:(id)sender;

@end

