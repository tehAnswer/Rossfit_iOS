//
//  Measure.m
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "Measure.h"

@interface Measure() <MTLJSONSerializing>

@end

@implementation Measure


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"measure_id": @"measure.id",
             @"height": @"measure.height",
             @"weight": @"measure.weight",
             @"created_at": @"measure.created_at",
             @"updated_at": @"measure.updated_at"
             };
}

@end
