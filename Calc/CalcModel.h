//
//  CalcModel.h
//  Calc
//
//  Created by Mohan, Kishore Kumar on 6/26/14.
//  Copyright (c) 2014 objc. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface CalcModel : NSObject

- (void) pushOperand:(double)operand;
- (double) performOpertation:(NSString *)operation;

@end