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
    AVSpeechSynthesizer * synthesizer = [[AVSpeechSynthesizer alloc]init];
/*Animation code grabbed from stackOverflow http://stackoverflow.com/users/218152/swiftarchitect  with additional flavouring performed */
    
    
    CATransition *animation = [CATransition animation];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.type = kCAAnimationPaced;
    animation.duration = 1;
    [_myLabel1.layer addAnimation:animation forKey:@"kCAAnimationPaced"];
    if((self.counter % 2) == 0){
        [_myLabel1 setText:@"Donald Duck"] ;
        AVSpeechUtterance * utterance = [AVSpeechUtterance speechUtteranceWithString:@"My Name is Donald Duck"];
      //  [utterance setRate:0.2f];
        [synthesizer speakUtterance:utterance];
    }
    else{
        [_myLabel1 setText:@"Hello World!"];
        AVSpeechUtterance * utterance = [AVSpeechUtterance speechUtteranceWithString:@"Hello World"];
        //[utterance setRate:0.2f];
        [synthesizer speakUtterance:utterance];
    }
    self.counter++;
   //  AudioServicesPlaySystemSound(theSound);
}

@end
