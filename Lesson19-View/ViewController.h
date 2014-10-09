//
//  ViewController.h
//  Lesson19-View
//
//  Created by Nick Bibikov on 10/6/14.
//  Copyright (c) 2014 NickBibikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:0.9]


@interface ViewController : UIViewController


@end

