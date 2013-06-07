//
//  PhotoHolderView.h
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PhotoHolderDelegate;

@interface PhotoHolderView : UIView

@property UIScrollView *scrollView;
@property UIImageView *imageView;

//-(id)initWithImage:(UIImage *)image;

-(void)addImage:(UIImage *)image;
-(void)setImageCenter:(CGPoint)center;


@end


@protocol PhotoHolderDelegate <NSObject>

-(void)photoHolderView:(PhotoHolderView *)photoHolderView didChangeFrame:(CGRect)frame;

-(void)photoHolderView:(PhotoHolderView *)photoHolderView centerDidMovedUpOrDown:(CGFloat)upOrdownDistance;

-(void)photoHolderView:(PhotoHolderView *)photoHolderView denterDidMovedLeftOrRight:(CGFloat)leftOrRightDistance;


@end