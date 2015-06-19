//
//  ViewController.m
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc]
//                                             initWithTarget:self action:@selector(paintingPan:)];
//    panRecognizer.maximumNumberOfTouches = 1;
//    [self.view addGestureRecognizer:panRecognizer];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)paintingPan:(UIPanGestureRecognizer *)recognizer {
//    
//    //NSLog(@"pan!");
//    
//    if (recognizer.state == UIGestureRecognizerStateBegan) {
//        self.startingPoint = [recognizer translationInView:self.view];
//        NSLog(@"Starting Point (%f,%f)", self.startingPoint.x, self.startingPoint.y);
//    }
//    
//    if (recognizer.state == UIGestureRecognizerStateEnded) {
//        self.endingPoint = [recognizer translationInView:self.view];
//        
//        CGRect r = CGRectMake(MIN(self.startingPoint.x, self.endingPoint.x),
//                              MIN(self.startingPoint.y, self.endingPoint.y),
//                              fabs(self.startingPoint.x - self.endingPoint.x),
//                              fabs(self.startingPoint.y - self.endingPoint.y));
//        
//        //[self.view setNeedsDisplayInRect:r];
//        [self.view setNeedsDisplay];
//        
//        //CGRect
//    }
//    
//}




@end
