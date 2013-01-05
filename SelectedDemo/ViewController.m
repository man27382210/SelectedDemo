//
//  ViewController.m
//  SelectedDemo
//
//  Created by En on 12/12/25.
//  Copyright (c) 2012年 En. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [imageView setUserInteractionEnabled:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.anyObject;
    if([touch view]==imageView)
    {
        [UIView animateWithDuration:0.1 animations:^{
            imageView.transform = CGAffineTransformScale(imageView.transform, 2, 2);
        }];
    }
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint point = [[touches anyObject]locationInView:self.view];
    UITouch *touch = touches.anyObject;
    if([touch view]==imageView)
    {
        [UIView animateWithDuration:0.1 animations:^{
            [imageView setCenter:point];
        }];
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.anyObject;
    if([touch view]==imageView)
    {
        [UIView animateWithDuration:0.1 animations:^{
            imageView.transform = CGAffineTransformScale(imageView.transform, 0.5, 0.5);
        }];
    }
}

@end
