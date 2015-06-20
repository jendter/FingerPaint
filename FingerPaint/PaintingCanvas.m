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

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    //[self.delegate numberOfLines];
    
    //NSLog(@"%lu", [self.delegate numberOfLines]);
    
    //NSLog(@"Line at index 0: %@", [self.delegate lineAtIndex:0]);
    
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
    
    
     
     // Working
    
    NSLog(@"View refreshed!");
    
    
    for (int counter = 0; counter < [self.delegate numberOfLines]; counter++) {
        UIBezierPath *path = [[UIBezierPath alloc] init];
        
        Line *line = [self.delegate lineAtIndex:counter];
        
        [path moveToPoint:(CGPoint){line.startX, line.startY}];
        
        [path addLineToPoint:(CGPoint){line.endX, line.endY}];
        
        [path setLineWidth:5.0];
        
        [line.color setStroke];
        
        [path setLineJoinStyle:kCGLineJoinRound];
        
        [path stroke];
        
        
    }

//    [path moveToPoint:(CGPoint){rect.origin.x, rect.origin.x}];
//
//    [path addLineToPoint:(CGPoint){rect.size.width, rect.size.height}];
//
//    [path setLineWidth:5.0];
//
//    //[[UIColor colorWithRed:line.redRGB/255 green:line.greenRGB/255 blue:line.blueRGB/255 alpha:1] setStroke];
//
//    [path setLineJoinStyle:kCGLineJoinRound];
//    
//    [path stroke];
    
    
    
    //NSLog(@"View refreshed!");
    
    
//    self.startingPoint = (CGPoint){0, 0};
//    self.endingPoint = (CGPoint){200, 200};
//    
//    NSLog(@"Starting Point (%f,%f)", self.startingPoint.x, self.startingPoint.y);
//    NSLog(@"Ending Point (%f,%f)", self.endingPoint.x, self.endingPoint.y);
//
//    [self.path moveToPoint:self.startingPoint];
//    
//    [self.path addLineToPoint:self.endingPoint];
//    
//    [self.path setLineWidth:5.0];
//    
//    [[UIColor redColor] setStroke];
//    //[[UIColor colorWithRed:line.redRGB/255 green:line.greenRGB/255 blue:line.blueRGB/255 alpha:1] setStroke];
//    
//    //[path setLineJoinStyle:kCGLineJoinRound];
    
    //UIBezierPath *path = [self.delegate currentBezierPath];
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    CGContextMoveToPoint(context, 0, 0);
//
//    CGContextAddLineToPoint(context, 100, 100);
//
//    CGContextAddLineToPoint(context, 0, 100);
//
//    CGContextClosePath(context);
//
//    CGContextSetLineWidth(context, 10.0);
//
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//
//    CGPathRef path = CGContextCopyPath(context);
//
//    CGContextFillPath(context);
//
//    CGContextAddPath(context, path);
//    
//    CGContextStrokePath(context);
    
    //[self.path stroke];
    
//    NSLog(@"Starting Point (%f,%f)", self.startingPoint.x, self.startingPoint.y);
//    NSLog(@"Ending Point (%f,%f)", self.endingPoint.x, self.endingPoint.y);
    
    
    
    
    
//    UIBezierPath *path = [[UIBezierPath alloc] init];
//
//    [path moveToPoint:self.startingPoint]; // might not be needed
//
//    [path addLineToPoint:self.endingPoint];
//
//    [path setLineWidth:5.0];
//
//    [[UIColor redColor] setStroke];
//    
//    [path stroke];
    
    
}

//- (void)createNewLineWithStartingPoint:(CGPoint)startingPoint endingPoint:(CGPoint)endingPoint {
////    self.path = [[UIBezierPath alloc] init];
////    
////    [self.path moveToPoint:startingPoint]; // might not be needed
////    
////    [self.path addLineToPoint:endingPoint];
////    
////    [self.path setLineWidth:5.0];
////    
////    [[UIColor redColor] setStroke];
//    
////    NSLog(@"Starting Point (%f,%f)", startingPoint.x, startingPoint.y);
////    NSLog(@"Ending Point (%f,%f)", endingPoint.x, endingPoint.y);
//    
//    
//    _startingPoint = startingPoint;
//    _endingPoint = endingPoint;
//}

// Save path to the delegate


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
