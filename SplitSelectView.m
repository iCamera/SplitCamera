//
//  SplitSelectView.m
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import "SplitSelectView.h"
#import "SplitModel.h"
@interface SplitSelectView ()

@property UIButton *modelButton;


@end
@implementation SplitSelectView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        _modelButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, frame.size.width/2, frame.size.height/2)];
        [self.modelButton setBackgroundColor:[UIColor blueColor]];//setImage:[UIImage imageNamed:@"splitModel.png"]];
        
        [_modelButton addTarget:self.delegate action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
        
        [self addSubview:_modelButton];
        // Initialization code
    }
    return self;
}
-(void)buttonPressed:(UIButton *)sender{
    //if();
    
    SplitModel *model = [[SplitModel alloc]init];
    //if ([self.delegate respondsToSelector:@selector(didSplitModelSelected:)]) {
        [self.delegate didSplitModelSelected:model];
    //}
    
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
