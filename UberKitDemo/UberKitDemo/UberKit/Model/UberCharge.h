//
//  UberCharge.h
//  UberKitDemo
//
//  Created by Sahil Mahajan on 09/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    BASE_FARE,
    DISTANCE,
    TIME,
    Surge,
    PROMOTION,
    SAFE_RIDE_FEE,
    ROUNDING_DOWN
} ChargeType;

#define GET_STATUS_FROM_STRING(status_string) (int)[@[@"base_fare",@"distance",@"time", @"surge", @"promotion", @"safe_ride_fee", @"rounding_down"] indexOfObject: status_string]

@interface UberCharge : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) float amount;
@property (nonatomic) ChargeType type;

- (instancetype)initWithInformation: (NSDictionary *) info;

@end

