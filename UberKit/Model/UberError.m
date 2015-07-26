//
//  UberError.m
//  UberKitDemo
//
//  Created by Sahil Mahajan on 26/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "UberError.h"

@implementation UberError

- (instancetype)initWithInformation: (NSDictionary *) error
{
    self = [super init];
    
    if(self)
    {
        _status =  [[error objectForKey:@"status"] integerValue];
        _code = [error objectForKey:@"code"];
        _title = [error objectForKey:@"title"];
    }
    return self;
}
@end
