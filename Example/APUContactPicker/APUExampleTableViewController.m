//
//  APUExampleTableViewController.m
//  APUContactPicker
//
//  Created by Hennadii Oleynik on 11/24/15.
//  Copyright © 2015 Hennadij. All rights reserved.
//

#import "APUExampleTableViewController.h"
#import "ContactPickerTableView.h"
#import "RecipientTableViewCell.h"
@interface APUExampleTableViewController ()


@property (weak, nonatomic) IBOutlet ContactPickerTableView *tableView;

@end

@implementation APUExampleTableViewController


- (IBAction)showContactPicker:(UIButton *)sender {
    
    [self.tableView showContactViewController];
}

- (IBAction)printDatasource:(UIButton *)sender {
    
    NSLog(@"%@", self.tableView.recipients);
}

@end
