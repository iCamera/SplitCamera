//
//  TakePhotoViewController.h
//  Xcamera
//
//  Created by alvin zheng on 6/6/13.
//  Copyright (c) 2013 alvin zheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplitModel.h"
@interface TakePhotoViewController : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property (nonatomic,weak)  SplitModel  *splitModel;
@property UIImagePickerController *imagePickerController;


@end
