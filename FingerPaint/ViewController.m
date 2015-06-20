//
//  ViewController.m
//  FingerPaint
//
//  Created by Josh Endter on 6/19/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "ViewController.h"
#import "PaintingCanvas.h"
#import "CanvasData.h"
#import "Line.h"

@interface ViewController ()

@property CGPoint startingPoint;
@property CGPoint endingPoint;
@property PaintingCanvas *canvas;
@property CanvasData *canvasData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc]
//                                             initWithTarget:self action:@selector(paintingPan:)];
//    panRecognizer.maximumNumberOfTouches = 1;
//    [self.view addGestureRecognizer:panRecognizer];
    
    //[self.view setDelegate:self];
    
//    self.canvas = [[PaintingCanvas alloc] init];
//    self.canvas.delegate = self;
//    [self.view addSubview:self.canvas];
    
    PaintingCanvas *canvas = (PaintingCanvas *)self.view;
    [canvas setDelegate:self];
    
    self.canvasData = [[CanvasData alloc] init];
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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        self.startingPoint = [touch locationInView:self.view];
        //if (self.path == nil){
            // If there is a path, add it to the array of BezierPaths in the model
            //NSLog(@"Empty path");
        //}
        
        //self.path = [[UIBezierPath alloc] init];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        self.endingPoint = [touch locationInView:self.view];
//        
//        NSLog(@"Starting Point (%f,%f)", self.startingPoint.x, self.startingPoint.y);
//        NSLog(@"Ending Point (%f,%f)", self.endingPoint.x, self.endingPoint.y);
        
//        [self.path moveToPoint:self.startingPoint]; // might not be needed
//        
//        [self.path addLineToPoint:self.endingPoint];
//        
//        [self.path setLineWidth:5.0];
//        
//        [[UIColor redColor] setStroke];
//
//        [self.view setNeedsDisplay];
        
        //[self.view set]
        
        //[self.canvas createNewLineWithStartingPoint:self.startingPoint endingPoint:self.endingPoint];
        
        Line *line = [[Line alloc] init];
        
        line.startX = self.startingPoint.x;
        line.startY = self.startingPoint.y;
        line.endX = self.endingPoint.x;
        line.endY = self.endingPoint.y;
        
        line.color = [UIColor redColor];
        
        [self.canvasData.lines addObject:line];

        
        
        [self.view setNeedsDisplay];
        
        self.startingPoint = self.endingPoint;
    }
}

-(NSUInteger)numberOfLines {
    //NSNumber *numOfLines = [NSNumber numberWithInteger:self.canvasData.lines.count];
    return self.canvasData.lines.count;
}

-(Line *)lineAtIndex:(NSUInteger)index {
    return self.canvasData.lines[index];
}

-(NSArray *)linesInRect:(CGRect)rect {
    NSMutableArray *linesInRect = [NSMutableArray new];
    
    
    for (Line *line in self.canvasData.lines) {
        CGPoint lineStart = {line.startX, line.startY};
        CGPoint lineEnd = {line.endX, line.endY};
        
        if (CGRectContainsPoint(rect, lineStart) || CGRectContainsPoint(rect, lineEnd) ) {
            [linesInRect addObject:line];
            NSLog(@"added line");
        }
        //[linesInRect addObject:line];
    }
    
    
    return [NSArray arrayWithArray:linesInRect];
}


@end
