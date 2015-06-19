//
//  PaintingCanvas.m
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "PaintingCanvas.h"
#import "Line.h"


@implementation PaintingCanvas

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    Line *line1 = [[Line alloc] init];
    
    line1.startX = 0.0;
    line1.startY = 0.0;
    line1.endX = 50.0;
    line1.endY = 50.0;
    
    line1.redRGB = 30.0;
    line1.greenRGB = 50.0;
    line1.blueRGB = 100.0;
    
    NSMutableArray *lines = [NSMutableArray new];
    [lines addObject:line1];
    
    for (Line *line in lines) {
        UIBezierPath *path = [[UIBezierPath alloc] init];
        
        [path moveToPoint:(CGPoint){line1.startX, line1.startY}];
        
        [path addLineToPoint:(CGPoint){line1.endX, line1.endY}];
        
        [path setLineWidth:5.0];
        
        [[UIColor colorWithRed:line1.redRGB/255 green:line1.greenRGB/255 blue:line1.blueRGB/255 alpha:1] setStroke];
        
        [path setLineJoinStyle:kCGLineJoinRound];
        
        [path stroke];
    }
    
    
    
}


@end
