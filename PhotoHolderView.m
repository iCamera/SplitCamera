//
//  PhotoHolderView.m
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import "PhotoHolderView.h"
@interface PhotoHolderView ()


@end
@implementation PhotoHolderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _scrollView = [[UIScrollView alloc]initWithFrame:frame];  
        [_scrollView setShowsHorizontalScrollIndicator:NO];
        [_scrollView setShowsVerticalScrollIndicator:NO];
        _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 300, 400)];
        [_imageView setContentMode:UIViewContentModeScaleAspectFit];
        
        
        [_scrollView addSubview:_imageView];
        _imageView.center = _scrollView.center;
        [self addSubview:_scrollView];
        
        
        
        // Initialization code
    }
    return self;
}

-(void)addImage:(UIImage *)image{
    [self.imageView setImage:image];
    
}
-(void)setImageCenter:(CGPoint)center{
    
    
    
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
