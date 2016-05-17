//
//  SecondViewController.h
//  tabs
//
//  Created by Emiko Clark on 5/16/16.
//  Copyright © 2016 Emiko Clark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (nonatomic) int counter_1;
@property (nonatomic) int counter_2;

@property (weak, nonatomic) IBOutlet UILabel *feedbackLabel;
@end

