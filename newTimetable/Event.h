//
//  Event.h
//  newTimetable
//
//  Created by Robin Malhotra on 01/03/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Course;

@interface Event : NSManagedObject

@property (nonatomic, retain) NSString * descriptorString;
@property (nonatomic, retain) Course *course;

@end
