//
//  GroupViewController.h
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *groupLabel;
- (IBAction)back:(id)sender;
- (IBAction)add:(id)sender;

@end
