//
//  GroupViewController.m
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "GroupViewController.h"
#import "GroupPOI.h"

@interface GroupViewController ()
{
    GroupPOI *groupPOIAdd;
}
@end

@implementation GroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    groupPOIAdd = [GroupPOI instance];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)add:(id)sender {
    [groupPOIAdd addGroupName:_groupLabel.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
