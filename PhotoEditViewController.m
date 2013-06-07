//
//  PhotoEditViewController.m
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import "PhotoEditViewController.h"
#import "PhotoHolderView.h"
@interface PhotoEditViewController ()
@property PhotoHolderView *photoHolderView;
@property UIImage *image;
@end

@implementation PhotoEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithImage:(UIImage *)image{
    self = [super init];
    if (self) {
        self.image = image;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _photoHolderView = [[PhotoHolderView alloc]initWithFrame:self.view.frame];
    [_photoHolderView addImage:self.image];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
