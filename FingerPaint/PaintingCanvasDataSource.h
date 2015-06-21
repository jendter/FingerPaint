//
//  BezierPathDelegate.h
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaintingCanvas;
@class Line;

@protocol PaintingCanvasDataSource <NSObject>

-(NSUInteger)numberOfLines;
-(Line *)lineAtIndex:(NSUInteger)index;
-(NSArray *)linesInRect:(CGRect)rect;
//-(CGRect)rectDrawingBoundsOfLine:(Line *)line;

@end
