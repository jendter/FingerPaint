//
//  CanvasData.h
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CanvasData : NSObject

@property (nonatomic, strong) NSMutableArray *lines;
@property (nonatomic, strong) UIColor *currentColor;

@end
