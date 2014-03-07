//
//  addCarViewController.m
//  newTimetable
//
//  Created by Robin Malhotra on 08/03/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "addCarViewController.h"
#import "AppDelegate.h"
@interface addCarViewController ()

@end

@implementation addCarViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"doneSegue"])
    {
        AppDelegate *appDelegate =
        [[UIApplication sharedApplication] delegate];
        
        NSManagedObjectContext *context =
        [appDelegate managedObjectContext];
        NSManagedObject *newCourse;
        newCourse = [NSEntityDescription
                     insertNewObjectForEntityForName:@"Course"
                     inManagedObjectContext:context];
        [newCourse setValue:self.textEntry.text forKey:@"courseCode"];
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}



@end
