//
//  UberRide.h
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UberDriver.h"
#import "UberVehicle.h"
#import "UberLocation.h"

typedef enum {UBER_REQUEST_PROCESSING, UBER_REQUEST_NO_DRIVER, UBER_REQUEST_ACCEPTED, UBER_REQUEST_ARRIVING, UBER_REQUEST_IN_PROGRESS, UBER_REQUEST_DRIVER_CANCELLED, UBER_REQUEST_RIDER_CANCELLED, UBER_REQUEST_COMPLETED} UberRideRequestStatus;

#define GET_STATUS_FROM_STRING(status_string) (int)[@[@"processing",@"no_drivers_available",@"accepted",@"arriving",@"in_progress",@"driver_canceled",@"rider_canceled",@"completed"] indexOfObject:status_string]

@interface UberRide : NSObject

@property (nonatomic) NSString *requestID;
@property (nonatomic) UberRideRequestStatus status;
@property (nonatomic) UberVehicle *vehicle;
@property (nonatomic) UberDriver *driver;
@property (nonatomic) UberLocation *location;
@property (nonatomic) int eta;
@property (nonatomic) float surgeMultiplier;

- (instancetype) initWithDictionary: (NSDictionary *) dictionary;

@end
