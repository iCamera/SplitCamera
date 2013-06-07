//
//  OverlayView.m
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import "OverlayView.h"
@interface OverlayView
@property (nonatomic,strong)
@end
@implementation OverlayView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        [self setBackgroundColor:[UIColor orangeColor]];
        [self setAlpha:0.6];
        
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
