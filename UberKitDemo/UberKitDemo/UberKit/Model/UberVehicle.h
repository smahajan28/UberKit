//
//  UberVehicle.h
//  UberKitDemo
//
//  Created by Sahil Mahajan on 08/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UberVehicle : NSObject

@property (nonatomic) NSString *model;
@property (nonatomic) NSString *make;
@property (nonatomic) NSString *vehiclePicURL;
@property (nonatomic) NSString *lincensePlate;

- (instancetype) initWithDictionary: (NSDictionary *) dictionary;

@end
