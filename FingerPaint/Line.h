//
//  Line.h
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Line : NSObject

@property (nonatomic) float startX;
@property (nonatomic) float startY;
@property (nonatomic) float endX;
@property (nonatomic) float endY;

//@property (nonatomic) float redRGB;
//@property (nonatomic) float greenRGB;
//@property (nonatomic) float blueRGB;

@property (nonatomic, strong) UIColor *color;

@end
