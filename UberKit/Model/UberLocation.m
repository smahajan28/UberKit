//
//  UberLocation.m
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "UberLocation.h"

@implementation UberLocation

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if(self)
    {
        _bearing = [[dictionary objectForKey:@"bearing"] intValue];
        _latitude = [[dictionary objectForKey:@"latitude"] floatValue];
        _longitude = [[dictionary objectForKey:@"longitude"] floatValue];
    }
    
    return self;
}

@end
