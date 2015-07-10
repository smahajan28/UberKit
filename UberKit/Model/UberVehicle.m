//
//  UberVehicle.m
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "UberVehicle.h"

@implementation UberVehicle

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if(self)
    {
        _make = [dictionary objectForKey:@"make"];
        _model = [dictionary objectForKey:@"model"];
        _lincensePlate = [dictionary objectForKey:@"license_plate"];
        _vehiclePicURL = [dictionary objectForKey:@"picture_url"];
    }
    
    return self;
}

@end
