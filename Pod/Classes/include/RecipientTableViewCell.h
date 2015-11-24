//
//  RecipientTableViewCell.h
//  AUContactPicker
//
//  Created by Hennadii Oleynik on 11/4/15.
//  Copyright © 2015 Hennadii Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipient.h"
@class RecipientTableViewCell;

@protocol RecipientTableViewCellDelegate <NSObject>
@required

-(void)removeContactWithPhoneNumber:(NSString *)phoneNumber sender:(RecipientTableViewCell *)sender;

@end

@interface RecipientTableViewCell : UITableViewCell
@property (nonatomic, weak) id<RecipientTableViewCellDelegate> delegate;

-(void)setRecipient:(Recipient *)recipient;
@end
