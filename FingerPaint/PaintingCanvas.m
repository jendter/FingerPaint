//
//  PaintingCanvas.m
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "PaintingCanvas.h"
#import "Line.h"

@interface PaintingCanvas ()

//@property (nonatomic) UIBezierPath *path; // change to currentPath
@property (nonatomic) CGPoint startingPoint;
@property (nonatomic) CGPoint endingPoint;

@end

@implementation PaintingCanvas


- (void)drawRect:(CGRect)rect {

    
    NSLog(@"Rect origin: (%f, %f)", rect.origin.x, rect.origin.y  );
    NSLog(@"Rect width: %f  height: %f)", rect.size.width, rect.size.height  );
    
    
    for (int counter = 0; counter < [self.delegate numberOfLines]; counter++) {
        UIBezierPath *path = [[UIBezierPath alloc] init];
        
        // Get the line and previous line
        Line *line = [self.delegate lineAtIndex:counter];
        Line *previousLine;
        if (counter > 0) {
            previousLine = [self.delegate lineAtIndex:counter-1];
        } else {
            previousLine = [self.delegate lineAtIndex:counter];
        }
        
        if (!line.isNewLine) {
            // Make it smoother by adding the previous line endpoint as the new line's start point
            [path moveToPoint:previousLine.start];
            [path addLineToPoint:line.start];
            [path addLineToPoint:line.end];
        } else {
            [path moveToPoint:line.start];
            [path addLineToPoint:line.end];
        }
        
        
        [path setLineWidth:line.brushSize];
        
        [line.color setStroke];
        
        [path setLineJoinStyle:kCGLineJoinRound];
        
        [path stroke];
        
    }
    
 
    
}


@end
