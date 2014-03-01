//
//  Notifications.h
//  newTimetable
//
//  Created by Robin Malhotra on 01/03/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Notifications : NSManagedObject

@property (nonatomic, retain) NSNumber * attendedValue;
@property (nonatomic, retain) NSDate * date;

@end
