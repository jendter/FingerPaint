//
//  PaintingCanvas.h
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaintingCanvas : UIView

@property (strong, nonatomic) NSMutableDictionary *lines;
@property (nonatomic) UIBezierPath *path;

@end
