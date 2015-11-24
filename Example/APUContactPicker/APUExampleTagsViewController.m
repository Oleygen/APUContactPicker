//
//  APUExampleTagsViewController.m
//  APUContactPicker
//
//  Created by Hennadii Oleynik on 11/23/15.
//  Copyright © 2015 Hennadij. All rights reserved.
//

#import "APUExampleTagsViewController.h"
#import "ContactPickerTagsView.h"
#import "Recipient.h"
//#import "TagViewStyle.h"

@interface APUExampleTagsViewController ()
@property (weak, nonatomic) IBOutlet ContactPickerTagsView *contactPickerTagsView;

@end

@implementation APUExampleTagsViewController

-(void)viewDidLoad {
    
    Recipient *r = [[Recipient alloc] init];
    
    NSString *path  =[[NSBundle mainBundle] bundlePath];
    
    NSString *fullPath = [path stringByAppendingString:@"/ContactPickerFrameworkResources.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:fullPath];
  //  TagViewStyle *style = [[TagViewStyle alloc] init];
  ////  style.backgroundColor = [UIColor clearColor];
  ////  style.borderColor = [UIColor greenColor];
  //  style.textColor = [UIColor blackColor];
  //  style.deleteColor = [UIColor redColor];
    
  //  self.contactPickerTagsView.tagViewStyle = style;
}

- (IBAction)showContactPicker:(UIButton *)sender {
    
    [self.contactPickerTagsView showContactViewController];
}

- (IBAction)printDatasource:(UIButton *)sender {
    
    NSLog( @"%@",     self.contactPickerTagsView.recipients);
}


@end
