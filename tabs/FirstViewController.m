//
//  FirstViewController.m
//  tabs
//
//  Created by Emiko Clark on 5/16/16.
//  Copyright © 2016 Emiko Clark. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = NSLocalizedString(@"First", @"First");
    self.tabBarItem.image = [UIImage imageNamed:@"first"];

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receivedNotification:)
                                                 name:@"Test1" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receivedNotification:)
                                                 name:@"Test2" object:nil];
}

-(void) receivedNotification: (NSNotification *)notification {
    
    NSLog(@">>FirstViewController - Notification Received: %@", [notification name]);
    
    NSDictionary *extrainfo = [notification userInfo];
    
    if ([[notification name] isEqualToString: @"Test1"]) {
        self.notificationCounter1++;
        self.counter_1.text = [NSString stringWithFormat:@"%@ - %i times",
            [extrainfo objectForKey:@"button_name"],self.notificationCounter1];
        
    }else {
        if ([[notification name] isEqualToString:@"Test2"]){
        self.notificationCounter2++;
            self.counter_2.text = [NSString stringWithFormat: @"%@ - %i times", [extrainfo objectForKey:@"button_name"],self.notificationCounter2];
        }
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
