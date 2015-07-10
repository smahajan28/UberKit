//
//  UberDriver.h
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UberDriver : NSObject

@property (nonatomic) NSString *phoneNumber;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *profilePicURL;
@property (nonatomic) int rating;

- (instancetype) initWithDictionary:(NSDictionary *)dictionary;

@end
