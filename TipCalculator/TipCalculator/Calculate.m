//
//  Calculate.m
//  TipCalculator
//
//  Created by Michael Woo on 2/13/14.
//  Copyright (c) 2014 Michael Woo. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

-(double) calculateTipWithAmount: (double) amount andTip:(double) tip{
    double total  = amount + amount * tip;
    return total;
}



@end
