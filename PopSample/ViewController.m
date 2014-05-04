//
//  ViewController.m
//  PopSample
//
//  Created by Paul Renson on 4/05/14.
//  Copyright (c) 2014 Paul Renson. All rights reserved.
//

#import "ViewController.h"
#import <PoP/POP.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *animatedView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions
- (IBAction)fadeButtonPressed:(id)sender {
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = @(1.0);
    anim.toValue = @(0.0);
    [self.animatedView pop_addAnimation:anim forKey:@"fade"];
}

@end
