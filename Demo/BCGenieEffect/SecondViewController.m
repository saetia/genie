//
//  SecondViewController.m
//  BCGenieEffect
//
//  Created by Benjamin Clayton on 16/01/2013.
//  Copyright (c) 2013 Bartosz Ciechanowski. All rights reserved.
//

#import "SecondViewController.h"
#import "PopupGenieSegueExample.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(IBAction) dismissButtonPressed:(id)sender {
    [PopupGenieSegueExample dismissPopupGenieSegue:self];
}

-(void) dealloc {
    NSLog(@"SecondViewController dealloc");
}


@end
