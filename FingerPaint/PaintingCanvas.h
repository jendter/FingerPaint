//
//  PaintingCanvas.h
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaintingCanvasDataSource.h"

@interface PaintingCanvas : UIView

@property (nonatomic, assign) id<PaintingCanvasDataSource> delegate; // Make this an ID with a protocol

@end
