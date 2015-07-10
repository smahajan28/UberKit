//
//  UberRide.m
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "UberRide.h"

@implementation UberRide

- (instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if(self)
    {
        _requestID = [dictionary objectForKey:@"request_id"];
        _status = GET_RIDE_STATUS_FROM_STRING([dictionary objectForKey:@"status"]);
        
        if ([[dictionary objectForKey:@"driver"] isKindOfClass: [NSNull class]] == NO) {
            _driver = [[UberDriver alloc] initWithDictionary: [dictionary objectForKey:@"driver"]];
        }
        if ([[dictionary objectForKey:@"location"] isKindOfClass: [NSNull class]] == NO) {
            _location = [[UberLocation alloc] initWithDictionary: [dictionary objectForKey:@"location"]];
        }
        if ([[dictionary objectForKey:@"vehicle"] isKindOfClass: [NSNull class]] == NO) {
            _vehicle = [[UberVehicle alloc] initWithDictionary: [dictionary objectForKey:@"vehicle"]];
        }

        _eta = [[dictionary objectForKey:@"eta"] intValue];
        _surgeMultiplier = [[dictionary objectForKey:@"surge_multiplier"] floatValue];
    }
    
    return self;
}

@end
