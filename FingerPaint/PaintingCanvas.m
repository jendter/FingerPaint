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

@property CGPoint startingPoint;
@property CGPoint endingPoint;

@end

@implementation PaintingCanvas

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
//    NSMutableArray *lines = [NSMutableArray new];
//    
//    
//    Line *line1 = [[Line alloc] init];
//    
//    line1.startX = 0.0;
//    line1.startY = 0.0;
//    line1.endX = 50.0;
//    line1.endY = 50.0;
//    
//    line1.redRGB = 30.0;
//    line1.greenRGB = 50.0;
//    line1.blueRGB = 100.0;
//    
//    [lines addObject:line1];
//    
//    Line *line2 = [[Line alloc] init];
//    
//    line2.startX = 50.0;
//    line2.startY = 50.0;
//    line2.endX = 100.0;
//    line2.endY = 100.0;
//    
//    line2.redRGB = 0.0;
//    line2.greenRGB = 150.0;
//    line2.blueRGB = 100.0;
//    
//    [lines addObject:line2];
//    
//    
//    
//    for (Line *line in lines) {
//        UIBezierPath *path = [[UIBezierPath alloc] init];
//        
//        [path moveToPoint:(CGPoint){line.startX, line.startY}];
//        
//        [path addLineToPoint:(CGPoint){line.endX, line.endY}];
//        
//        [path setLineWidth:5.0];
//        
//        [[UIColor colorWithRed:line.redRGB/255 green:line.greenRGB/255 blue:line.blueRGB/255 alpha:1] setStroke];
//        
//        [path setLineJoinStyle:kCGLineJoinRound];
//        
//        [path stroke];
//    }
//    
    
    /*
     
     // Working
    
    NSLog(@"View refreshed!");
    
    UIBezierPath *path = [[UIBezierPath alloc] init];

    [path moveToPoint:(CGPoint){rect.origin.x, rect.origin.x}];

    [path addLineToPoint:(CGPoint){rect.size.width, rect.size.height}];

    [path setLineWidth:5.0];

    //[[UIColor colorWithRed:line.redRGB/255 green:line.greenRGB/255 blue:line.blueRGB/255 alpha:1] setStroke];

    [path setLineJoinStyle:kCGLineJoinRound];
    
    [path stroke];
    
     */
    
    NSLog(@"View refreshed!");
    
    
    //self.startingPoint = (CGPoint){0, 0};
    //self.endingPoint = (CGPoint){200, 200};
    
    NSLog(@"Starting Point (%f,%f)", self.startingPoint.x, self.startingPoint.y);
    NSLog(@"Ending Point (%f,%f)", self.endingPoint.x, self.endingPoint.y);
    
    [self.path moveToPoint:self.startingPoint];
    
    [self.path addLineToPoint:self.endingPoint];
    
    [self.path setLineWidth:5.0];
    
    [[UIColor redColor] setStroke];
    //[[UIColor colorWithRed:line.redRGB/255 green:line.greenRGB/255 blue:line.blueRGB/255 alpha:1] setStroke];
    
    //[path setLineJoinStyle:kCGLineJoinRound];
    
    [self.path stroke];
    
    self.startingPoint = self.endingPoint;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        self.startingPoint = [touch locationInView:self];
        self.path = [[UIBezierPath alloc] init];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        self.endingPoint = [touch locationInView:self];
        
        
        [self setNeedsDisplay];
    }
}

//-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//    for (UITouch *touch in touches) {
//        self.endingPoint = [touch locationInView:self];
//        NSLog(@"Starting Point (%f,%f)", self.startingPoint.x, self.startingPoint.y);
//        NSLog(@"Ending Point (%f,%f)", self.endingPoint.x, self.endingPoint.y);
//    }
//    
//    //    CGRect r = CGRectMake(self.startingPoint.x,
//    //                          self.startingPoint.y
//    //                          );
//    //
//    //    [self.view setNeedsDisplayInRect:r];
//    
//    
//}


@end
