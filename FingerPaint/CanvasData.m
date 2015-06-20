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
        _currentColor = [UIColor blueColor];
    }
    return self;
}

@end
