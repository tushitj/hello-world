//
//  ViewController.h
//  helloWorld
//
//  Created by Tushit Jain on 1/18/17.
//  Copyright © 2017 Tushit Jain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
{
    SystemSoundID theSound;
}
@property (nonatomic, assign) NSInteger counter;
@property (strong, nonatomic) IBOutlet UILabel *myLabel1;

- (IBAction)label1Action:(id)sender;


@end

