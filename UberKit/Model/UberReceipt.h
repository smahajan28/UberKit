//
//  UberReceipt.h
//  UberKitDemo
//
//  Created by Sahil Mahajan on 09/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UberCharge.h"

@interface UberReceipt : NSObject

@property (nonatomic) NSString * requestId;
@property (nonatomic) float normalFare;
@property (nonatomic) float subtotal;
@property (nonatomic) float totalCharged;
@property (nonatomic) float totalOwed;
@property (nonatomic) NSString * currencyCode;
@property (nonatomic) NSString * duration;
@property (nonatomic) NSString * distanceLabel;
@property (nonatomic) NSString * totalDistance;
@property (nonatomic) NSArray * charges;
@property (nonatomic) NSArray * chargeAdjustments;
@property (nonatomic) UberCharge * surgeCharges;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
