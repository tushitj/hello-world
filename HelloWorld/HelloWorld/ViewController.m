//
//  ViewController.m
//  helloWorld
//
//  Created by Tushit Jain on 1/18/17.
//  Copyright © 2017 Tushit Jain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    self.counter=0;
    NSString * soundPath = [[NSBundle mainBundle]
                            pathForResource:@"sound1" ofType:@"m4a"];
    NSURL * sound1 =  [NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID ((__bridge CFURLRef)sound1, &theSound);
                        
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)label1Action:(id)sender {
/*Animation code grabbed from stackOverflow http://stackoverflow.com/users/218152/swiftarchitect  with additional flavouring performed */
    
    
    CATransition *animation = [CATransition animation];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.type = kCATransitionReveal;
    animation.duration = 0.80;
    [_myLabel1.layer addAnimation:animation forKey:@"kCATransitionReveal"];
    if((self.counter % 2) == 0){
        [_myLabel1 setText:@"Tushit Jain"] ;
        [UIColor brownColor];
    }
    else
        [_myLabel1 setText:@"Hello World!"];
     self.counter++;
    AudioServicesPlaySystemSound(theSound);
}

@end
