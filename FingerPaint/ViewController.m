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
    
    PaintingCanvas *canvas = (PaintingCanvas *)self.view;
    [canvas setDelegate:self];
    
    self.canvasData = [[CanvasData alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        self.startingPoint = [touch locationInView:self.view];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        self.endingPoint = [touch locationInView:self.view];
        
        Line *line = [[Line alloc] init];
        
        line.start = self.startingPoint;
        line.end = self.endingPoint;
        line.color = self.canvasData.currentColor;
        line.brushSize = 5.0;
        
        [self.canvasData.lines addObject:line];

        CGRect rectContainingAllLines = [self rectDrawingBoundsOfLine:line];

        
        for (Line *otherLine in self.canvasData.lines) {
            
            if (CGRectContainsPoint(rectContainingAllLines, otherLine.start) ||
                CGRectContainsPoint(rectContainingAllLines, otherLine.end)
                ){
                    CGRect rectContainingOtherLine = [self rectDrawingBoundsOfLine:otherLine];
                
                    rectContainingAllLines = CGRectUnion(rectContainingAllLines, rectContainingOtherLine);
            }
        }
        
        [self.view setNeedsDisplayInRect:rectContainingAllLines];
        
        self.startingPoint = self.endingPoint;
    
    }
}

-(CGRect)rectDrawingBoundsOfLine:(Line *)line{

    CGPoint upperLeftPoint;
    CGPoint lowerRightPoint;
    
    upperLeftPoint = (CGPoint) {line.start.x - line.brushSize, line.start.y - line.brushSize};
    lowerRightPoint = (CGPoint) {line.start.x + line.brushSize, line.start.y + line.brushSize};
    CGRect rectContainingStartPoint = CGRectMake(MIN(upperLeftPoint.x, lowerRightPoint.x),
                                                 MIN(upperLeftPoint.y, lowerRightPoint.y),
                                                 fabs(upperLeftPoint.x - lowerRightPoint.x),
                                                 fabs(upperLeftPoint.y - lowerRightPoint.y));
    
    upperLeftPoint = (CGPoint) {line.end.x - line.brushSize, line.end.y - line.brushSize};
    lowerRightPoint = (CGPoint) {line.end.x + line.brushSize, line.end.y + line.brushSize};
    CGRect rectContainingEndPoint = CGRectMake(MIN(upperLeftPoint.x, lowerRightPoint.x),
                                               MIN(upperLeftPoint.y, lowerRightPoint.y),
                                               fabs(upperLeftPoint.x - lowerRightPoint.x),
                                               fabs(upperLeftPoint.y - lowerRightPoint.y));
    
    CGRect rectContainingStartAndEndPoints = CGRectUnion(rectContainingStartPoint, rectContainingEndPoint);
    
    return rectContainingStartAndEndPoints;
}


#pragma mark - Painting Canvas Data Source

-(NSUInteger)numberOfLines {
    return self.canvasData.lines.count;
}

-(Line *)lineAtIndex:(NSUInteger)index {
    return self.canvasData.lines[index];
}

-(NSArray *)linesInRect:(CGRect)rect {
    NSMutableArray *linesInRect = [NSMutableArray new];
    
    for (Line *line in self.canvasData.lines) {
        if (CGRectContainsPoint(rect, line.start) || CGRectContainsPoint(rect, line.end) ) {
            [linesInRect addObject:line];
        }
    }
    
    return [NSArray arrayWithArray:linesInRect];
}


@end
