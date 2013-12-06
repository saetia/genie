//
//  GenieSegue.m
//  BCGenieEffect
//
//  Created by Benjamin Clayton on 16/01/2013.
//  Copyright (c) 2013 Bartosz Ciechanowski. All rights reserved.
//

#import "PopupGenieSegueExample.h"
#import "UIView+Genie.h"

@implementation PopupGenieSegueExample

- (void) perform {
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;

    CGRect frame = CGRectMake(286, 568, 20, 20);
    dst.view.frame = CGRectMake(0, 0, 320, 568);
    [src.view addSubview:dst.view];
    [dst.view genieOutTransitionWithDuration:0.80 startRect:frame startEdge:BCRectEdgeTop completion:^{
        [dst.view removeFromSuperview];
        [src presentModalViewController:dst animated:NO];
    }];
}

+ (void) dismissPopupGenieSegue:(UIViewController*) genieViewController {
    CGRect frame = CGRectMake(286, 568, 20, 20);
    [genieViewController.view.window addSubview:genieViewController.presentingViewController.view];
    [genieViewController.view.window sendSubviewToBack:genieViewController.presentingViewController.view];
    [genieViewController.view genieInTransitionWithDuration:0.80 destinationRect:frame destinationEdge:BCRectEdgeTop completion:^{
        [genieViewController dismissModalViewControllerAnimated:NO];
    }];
}

@end
