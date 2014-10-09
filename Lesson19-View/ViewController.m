//
//  ViewController.m
//  Lesson19-View
//
//  Created by Nick Bibikov on 10/6/14.
//  Copyright (c) 2014 NickBibikov. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) UIView* testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //-------------------------------------------------------------------------------
    // Black frame for chess board
    
    UIView* blackFrame = [[UIView alloc] initWithFrame:CGRectMake(20, 150, CGRectGetWidth(self.view.frame) - 40 , CGRectGetWidth(self.view.bounds) - 40)];
    blackFrame.backgroundColor = UIColorFromRGB(0x94785c);
    blackFrame.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin |
                                    UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;

    [self.view addSubview:blackFrame];
    
    // White board
    
    CGRect whiteCell = CGRectMake(2, 2, CGRectGetWidth(blackFrame.frame) - 4, CGRectGetWidth(blackFrame.bounds) - 4);
    UIView* whiteBoard = [[UIView alloc] initWithFrame:whiteCell];
    whiteBoard.backgroundColor = [UIColor whiteColor];
    [blackFrame addSubview:whiteBoard];
    
    // Add cells
    
    CGFloat widthCell = (CGRectGetWidth(whiteCell)-4)/8;
    CGFloat heightCell = widthCell;
    CGFloat x = 2 + widthCell;
    CGFloat y = 2;
    
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 4; j++) {
            UIView* cell = [[UIView alloc] initWithFrame:CGRectMake(x, y, widthCell, heightCell)];
            cell.backgroundColor = UIColorFromRGB(0x94785c);
            [whiteBoard addSubview:cell];
            x = x + widthCell * 2;
        }
        
        x = (i % 2) ? 2 + widthCell : 2;
        y = y + heightCell;
    }
    
    //-------------------------------------------------------------------------------
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSUInteger) supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskAll;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.testView.frame), NSStringFromCGRect(self.testView.bounds));
}

@end
