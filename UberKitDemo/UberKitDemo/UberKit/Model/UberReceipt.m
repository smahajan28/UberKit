//
//  UberReceipt.m
//  UberKitDemo
//
//  Created by Sahil Mahajan on 09/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "UberReceipt.h"

@implementation UberReceipt

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if(self)
    {
        _requestId = [dictionary objectForKey:@"request_id"];
        _normalFare = [[dictionary objectForKey:@"normal_fare"] floatValue];
        _subtotal = [[dictionary objectForKey:@"subtotal"] floatValue];
        _totalCharged = [[dictionary objectForKey:@"total_charged"] floatValue];
        _totalOwed = [[dictionary objectForKey:@"total_owed"] floatValue];
        _currencyCode = [dictionary objectForKey:@"currency_code"];
        _distanceLabel = [dictionary objectForKey:@"distance_label"];
        _duration = [dictionary objectForKey:@"duration"];
        _totalDistance = [dictionary objectForKey:@"distance"];
        _charges = [dictionary objectForKey:@"charges"];
        _chargeAdjustments = [dictionary objectForKey:@"charge_adjustments"];
        _surgeCharges = [dictionary objectForKey:@"surge_charge"];
    }
    
    return self;
}

@end
