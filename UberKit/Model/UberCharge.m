//
//  UberCharge.m
//  UberKitDemo
//
//  Created by Sahil Mahajan on 09/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "UberCharge.h"

@implementation UberCharge

- (instancetype)initWithInformation:(NSDictionary *)info
{
    self = [super init];
    
    if(self)
    {
        _name =  [info objectForKey:@"name"];
        _amount = [[info objectForKey:@"amount"] floatValue];
        _type = GET_STATUS_FROM_STRING([info objectForKey:@"type"]);
    }
    return self;
}
@end
