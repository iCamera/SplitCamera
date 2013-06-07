//
//  TakePhotoViewController.m
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import "TakePhotoViewController.h"
#import "PhotoEditViewController.h"
#import "OverlayView.h"
@interface TakePhotoViewController ()

@property PhotoEditViewController *photoEditViewController;
@property OverlayView *overlayView;
@property NSMutableArray *takedImages;

@end

@implementation TakePhotoViewController

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
    
    
    _imagePickerController = [[UIImagePickerController alloc]init];
    _imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    //_imagePickerController.showsCameraControls = NO;
       _imagePickerController.delegate = self;
    
    _overlayView =[[OverlayView alloc]initWithFrame:_imagePickerController.view.frame];
 
    _imagePickerController.cameraOverlayView = self.overlayView;
  
    
    
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self presentViewController:self.imagePickerController animated:YES completion:NULL];
    
    
}

#pragma mark -
#pragma mark UIImageViewControllerDelegate


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    if(!_takedImages) _takedImages = [[NSMutableArray alloc]init];
    [self.takedImages addObject:[info valueForKey:UIImagePickerControllerOriginalImage]];
    [self.imagePickerController dismissViewControllerAnimated:YES completion:NULL];
    self.photoEditViewController = [[PhotoEditViewController alloc]initWithImage:[self.takedImages objectAtIndex:0]];
    
    [self presentViewController:self.photoEditViewController animated:YES completion:NULL];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    
    [self.imagePickerController dismissViewControllerAnimated:YES completion:NULL];
    if ([self.takedImages count]!=0) {
  
    self.photoEditViewController = [[PhotoEditViewController alloc]initWithImage:[self.takedImages objectAtIndex:0]];
    [self presentViewController:self.photoEditViewController animated:YES completion:NULL];
    }
}
@end
