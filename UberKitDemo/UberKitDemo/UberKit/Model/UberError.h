//
//  UberError.h
//  UberKitDemo
//
//  Created by Sahil Mahajan on 26/07/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UberError : NSObject

@property (nonatomic) NSString * code;
@property (nonatomic) float status;
@property (nonatomic) NSString * title;

- (instancetype)initWithInformation: (NSDictionary *) error;

@end
