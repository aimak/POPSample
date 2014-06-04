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

@property (weak, nonatomic) IBOutlet UIButton *fadeButton;

@property (nonatomic, weak) POPBasicAnimation * fadeAnimation;

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

#pragma mark - configure animations

- (void) createFadeAnimation {
    self.fadeAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    self.fadeAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    self.fadeAnimation.fromValue = @(1.0);
    self.fadeAnimation.toValue = @(0.0);
    self.fadeAnimation.duration = 5.0f;
}

#pragma mark - actions
- (IBAction)fadeButtonPressed:(UIButton*)sender {
    
    if (sender.isSelected) {
        [self.animatedView pop_removeAnimationForKey:@"fade"];
        [sender setSelected:NO];
    }
    else {
        if (!self.fadeAnimation) {
            [self createFadeAnimation];
        }
        [sender setSelected:YES];
        [self.animatedView pop_addAnimation:self.fadeAnimation forKey:@"fade"];
    }
}

- (IBAction)stopAllAnimationsButtonPressed:(id)sender {
    [self.animatedView pop_removeAllAnimations];
    [self.fadeButton pop_removeAllAnimations];
}

@end
