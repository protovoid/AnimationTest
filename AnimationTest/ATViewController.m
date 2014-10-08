//
//  ATViewController.m
//  AnimationTest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ATViewController.h"

@interface ATViewController ()

@end

@implementation ATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    int size = 20;
    UIView *blueSquare = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size, size)];
    blueSquare.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueSquare];
    
    CAKeyframeAnimation *animate = [CAKeyframeAnimation animation];
    animate.keyPath = @"position";
    CGRect path = CGRectMake(0, 0, self.view.frame.size.width - size, self.view.frame.size.height -size);
    animate.path = CGPathCreateWithRect(path, nil);
    
    animate.duration = 4;
    animate.additive = YES;
    animate.repeatCount = HUGE_VALF;
    animate.calculationMode = kCAAnimationPaced;
    
    [blueSquare.layer addAnimation:animate forKey:@"animate"];
    
  
   
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
