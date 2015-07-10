//
//  UberLocation.h
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UberLocation : NSObject

@property (nonatomic) float latitude;
@property (nonatomic) float longitude;
@property (nonatomic) int bearing;

- (instancetype) initWithDictionary: (NSDictionary *) dictionary;

@end
