//
//  FirstViewController.h
//  tabs
//
//  Created by Emiko Clark on 5/16/16.
//  Copyright © 2016 Emiko Clark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *counter_1;
@property (weak, nonatomic) IBOutlet UITextField *counter_2;

@property (nonatomic) int notificationCounter1;
@property (nonatomic) int notificationCounter2;


-(void) receivedNotification: (NSNotification *)notification;

@end

