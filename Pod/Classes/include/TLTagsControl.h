//
//  TLTagsControl.h
//  TagsInputSample
//
//  Created by Антон Кузнецов on 11.02.15.
//  Copyright (c) 2015 TheLightPrjg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipient.h"
#import "TagViewStyle.h"
@class TLTagsControl;

@protocol TLTagsControlDelegate <NSObject>
@optional
- (void)tagsControl:(TLTagsControl *)tagsControl tappedAtIndex:(NSInteger)index;
@required
- (void)tagsControl:(TLTagsControl *)tagsControl deletedTagAtIndex:(NSInteger)index;
-(BOOL)tagsControl:(TLTagsControl *)tagsControl didAddTag:(Recipient *)tag;

@end

typedef NS_ENUM(NSUInteger, TLTagsControlMode) {
    TLTagsControlModeEdit,
    TLTagsControlModeList,
};

@interface TLTagsControl : UIScrollView

@property (nonatomic, strong) NSMutableArray<Recipient *> *tags;
@property (nonatomic, strong) TagViewStyle *tagViewStyle;
@property (nonatomic, strong) NSString *tagPlaceholder;
@property (nonatomic) TLTagsControlMode mode;

@property (assign, nonatomic) id<TLTagsControlDelegate> tapDelegate;

- (id)initWithFrame:(CGRect)frame andTags:(NSArray *)tags withTagsControlMode:(TLTagsControlMode)mode;

- (void)addTag:(Recipient *)tag;
- (void)reloadTagSubviews;  

@end