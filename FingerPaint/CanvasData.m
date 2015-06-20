//
//  CanvasData.m
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "CanvasData.h"
#import "Line.h"

@implementation CanvasData

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lines = [NSMutableArray new];
        
//        // Test canvas data
//        Line *line1 = [[Line alloc] init];
//    
//        line1.startX = 0.0;
//        line1.startY = 0.0;
//        line1.endX = 50.0;
//        line1.endY = 50.0;
//    
//        line1.color = [UIColor redColor];
//    
//        [_lines addObject:line1];
//    
//        Line *line2 = [[Line alloc] init];
//    
//        line2.startX = 50.0;
//        line2.startY = 50.0;
//        line2.endX = 100.0;
//        line2.endY = 100.0;
//        
//        line2.color = [UIColor blueColor];
//        
//        [_lines addObject:line2];
//        
//        NSLog(@"Lines Array: %@", _lines);
        
    }
    return self;
}

@end
