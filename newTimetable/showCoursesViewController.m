//
//  showCoursesViewController.m
//  newTimetable
//
//  Created by Robin Malhotra on 05/03/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "showCoursesViewController.h"
#import "Course.h"
#import "AppDelegate.h"
#import "addCarViewController.h"

@interface showCoursesViewController ()
- (IBAction)cancel:(UIStoryboardSegue *)segue;
- (IBAction)done:(UIStoryboardSegue *)segue;
@end

@implementation showCoursesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)done:(UIStoryboardSegue *)segue
{
    addCarViewController *addCarVC=segue.sourceViewController;
    AppDelegate *appDelegate =
    [[UIApplication sharedApplication] delegate];
    self.coursesToShow=[appDelegate getAllCourses];
    [self.collectionView reloadData];
}

-(IBAction)cancel:(UIStoryboardSegue *)segue
{
    [self.collectionView reloadData];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate *appDelegate =
    [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context =
    [appDelegate managedObjectContext];
    NSManagedObject *newCourse;
    newCourse = [NSEntityDescription
                 insertNewObjectForEntityForName:@"Course"
                 inManagedObjectContext:context];
    [newCourse setValue:@"CYL230" forKey:@"courseCode"];
    self.coursesToShow=[appDelegate getAllCourses];
    NSManagedObject *newCourse2;
    newCourse2 = [NSEntityDescription
                 insertNewObjectForEntityForName:@"Course"
                 inManagedObjectContext:context];
    [newCourse2 setValue:@"HUL212" forKey:@"courseCode"];
    self.coursesToShow=[appDelegate getAllCourses];


    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.coursesToShow count];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    Course *current = [self.coursesToShow objectAtIndex:indexPath.row];
    NSLog(@"%@",current.courseCode);
    

    UILabel *label2=(UILabel *)[cell viewWithTag:2];
    label2.text=current.courseCode;
    [cell.layer setBorderWidth:2.0f];
    [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    [cell.layer setCornerRadius:52.0f];
    
    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
