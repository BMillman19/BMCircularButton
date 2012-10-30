//
//  BMCircularButton.m
//  BMCircularButton
//
//  Created by Brandon Millman on 10/28/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import "BMCircularButton.h"

#import <QuartzCore/QuartzCore.h>

@implementation BMCircularButton

+ (id)buttonWithCenter:(CGPoint)center withRadius:(CGFloat)radius withIcon:(FAIcon)icon
{
    BMCircularButton *button = [[self alloc] initWithCenter:center withRadius:radius];
//    button.icon = icon;
    return button;
}

+ (id)buttonWithCenter:(CGPoint)center withRadius:(CGFloat)radius
{
    return [[self alloc] initWithCenter:center withRadius:radius];
}

- (id)initWithCenter:(CGPoint)center withRadius:(CGFloat)radius
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        // Set frame and center
        self.frame = CGRectMake(0, 0, radius * 2, radius * 2);
        self.center = center;
        
        // Default color
        self.backgroundColor = [UIColor purpleColor];
        
        // Round the button
        self.clipsToBounds = YES;
        self.layer.cornerRadius = radius;
        
        // Border
//        self.layer.borderColor=[UIColor redColor].CGColor;
//        self.layer.borderWidth=2.0f;
        
        // Shadow
        self.layer.masksToBounds = NO;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.shadowRadius = radius/10;
        self.layer.shadowOpacity = 0.5f;
        
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50)
                                                            radius:radius + 2
                                                        startAngle:0
                                                          endAngle:2 * M_PI clockwise:YES];


        
//        imgView.layer.shadowColor = [UIColor blackColor].CGColor;
//        imgView.layer.shadowOpacity = 0.7f;
//        imgView.layer.shadowOffset = CGSizeMake(10.0f, 10.0f);
//        imgView.layer.shadowRadius = 5.0f;
//        imgView.layer.masksToBounds = NO;
        
        self.layer.shadowPath = path.CGPath;

        
    }
    return self;
}



@end
