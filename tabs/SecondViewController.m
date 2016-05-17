//
//  SecondViewController.m
//  tabs
//
//  Created by Emiko Clark on 5/16/16.
//  Copyright © 2016 Emiko Clark. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:) name:@"Test1" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:) name:@"Test2" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1Pressed:(UIButton *)sender {
    
    self.counter_1++;
    
    NSDictionary *extrainfo = [NSDictionary dictionaryWithObject:@"One" forKey:@"button_name"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Test1" object:nil userInfo:extrainfo];
}
- (IBAction)button2Pressed:(UIButton *)sender {
    
    self.counter_2++;
    NSDictionary *extrainfo = [NSDictionary dictionaryWithObject:@"Two" forKey:@"button_name"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Test2" object:nil userInfo:extrainfo];
    
}

-(void)receiveNotification:(NSNotification *) notification
{
    NSLog(@"Second View Notification Received: %@", [notification name]);
    
    NSDictionary *extraInfo = [notification userInfo];
    self.feedbackLabel.text  = [NSString stringWithFormat:@"%@ - Tapped: %i times,   Two - Tapped: %i times ", [extraInfo objectForKey:@"button_name"], self.counter_1, self.counter_2];
}

@end
