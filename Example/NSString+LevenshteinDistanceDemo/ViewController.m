//
//  ViewController.m
//  NSString+LevenshteinDistanceDemo
//
//  Created by koyachi on 2014/04/13.
//  Copyright (c) 2014年 koyachi. All rights reserved.
//

#import "ViewController.h"
#import "NSString+LevenshteinDistance.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.dstTextField.placeholder = @"foo";
    self.dstTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textField:(UITextField *)textiField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([string isEqualToString:@"\n"]) {
        NSUInteger distance = [self.srcLabel.text levenshteinDistanceTo:self.dstTextField.text];
        self.distanceValueLabel.text = @(distance).stringValue;
        NSLog(@"distance = %d", distance);
    }

    return YES;
}

@end
