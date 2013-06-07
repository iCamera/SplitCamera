//
//  SplitModelSelectViewController.m
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import "SplitModelSelectViewController.h"
#import "TakePhotoViewController.h"
#import "SplitModel.h"
#import "SplitSelectView.h"
@interface SplitModelSelectViewController ()<SplitSelectViewDelegate>
@property TakePhotoViewController *takePhotoViewController;
@property SplitModel *splitModel;
//@property SplitSelectView *splitSelectView;

@end

@implementation SplitModelSelectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SplitSelectView *splitSelectView =[[SplitSelectView alloc]initWithFrame:CGRectMake(0, 100, 300, 400)];
    [splitSelectView setDelegate:self];
    [self.view addSubview:splitSelectView];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//action select split model
-(void)splitModelSelected:(SplitModel *)model{
    
    [self setModelOfSpit];
    
    _takePhotoViewController = [[TakePhotoViewController alloc]init];
    
    //self.takePhotoViewController.splitModel = self.splitModel;
    
    [self presentViewController:self.takePhotoViewController animated:YES completion:NULL];
    
    
}

-(void)setModelOfSpit{
    
    //set split model
    
    
}
#pragma mark -
#pragma mark splitSelectViewDelegate
-(void)didSplitModelSelected:(SplitModel *)model{
    
    [self splitModelSelected:model];
}


@end
