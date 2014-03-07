//
//  addCarViewController.h
//  newTimetable
//
//  Created by Robin Malhotra on 08/03/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"
@interface addCarViewController : UIViewController
@property (nonatomic,strong) Course *courseToAdd;
@property (weak, nonatomic) IBOutlet UITextField *textEntry;

@end
