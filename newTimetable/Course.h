//
//  Course.h
//  newTimetable
//
//  Created by Robin Malhotra on 01/03/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSNumber * attendedClasses;
@property (nonatomic, retain) NSNumber * ecaClasses;
@property (nonatomic, retain) NSNumber * overClasses;
@property (nonatomic, retain) NSNumber * totalClasses;
@property (nonatomic, retain) NSNumber * minimumRequired;
@property (nonatomic, retain) NSString * courseCode;
@property (nonatomic, retain) NSString * courseName;
@property (nonatomic, retain) NSSet *events;
@end

@interface Course (CoreDataGeneratedAccessors)

- (void)addEventsObject:(NSManagedObject *)value;
- (void)removeEventsObject:(NSManagedObject *)value;
- (void)addEvents:(NSSet *)values;
- (void)removeEvents:(NSSet *)values;

@end
