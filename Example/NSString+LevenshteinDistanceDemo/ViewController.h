//
//  ViewController.h
//  NSString+LevenshteinDistanceDemo
//
//  Created by koyachi on 2014/04/13.
//  Copyright (c) 2014年 koyachi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UILabel *srcLabel;
@property (nonatomic, strong) IBOutlet UITextField *dstTextField;
@property (nonatomic, strong) IBOutlet UILabel *distanceValueLabel;

@end
