//
//  Task.h
//  Quiz7
//
//  Created by Moser, Wesley on 4/7/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Task : NSManagedObject

@property (nonatomic, retain) NSNumber * urgency;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * dueDate;

@end
