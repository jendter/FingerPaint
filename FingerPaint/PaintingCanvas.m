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
        
        Line *line = [self.delegate lineAtIndex:counter];
        
        [path moveToPoint:line.start];
        
        [path addLineToPoint:line.end];
        
        [path setLineWidth:line.brushSize];
        
        [line.color setStroke];
        
        [path setLineJoinStyle:kCGLineJoinRound];
        
        [path stroke];
        
    }
    
 
    
}


@end
