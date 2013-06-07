//
//  SplitSelectView.h
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplitModel.h"
@protocol SplitSelectViewDelegate;

@interface SplitSelectView : UIView
@property (nonatomic,weak) id <SplitSelectViewDelegate> delegate;
@end
@protocol SplitSelectViewDelegate 

-(void)didSplitModelSelected:(SplitModel *)model;

@end