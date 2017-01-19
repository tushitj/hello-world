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
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)label1Action:(id)sender {
   
    if((self.counter % 2) == 0)
        [_myLabel1 setText:@"Tushit Jain"] ;
    else
        [_myLabel1 setText:@"Hello World!"];
     self.counter++;
}

@end
