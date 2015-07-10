//
//  UberDriver.m
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "UberDriver.h"

@implementation UberDriver

- (instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if(self)
    {
        _phoneNumber = [dictionary objectForKey:@"phone_number"];
        _name = [dictionary objectForKey:@"name"];
        _profilePicURL = [dictionary objectForKey:@"picture_url"];
        _rating = [[dictionary objectForKey:@"rating"] intValue];
    }
    
    return self;
}

@end
