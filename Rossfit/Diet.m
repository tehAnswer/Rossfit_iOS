//
//  Diet.m
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "Diet.h"
#import "Meal.h"
#import <Mantle/NSValueTransformer+MTLPredefinedTransformerAdditions.h>

@interface Diet() <MTLJSONSerializing>

@end

@implementation Diet


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"diet_type": @"diet.diet_type",
             @"name" : @"diet.name",
             @"meals" : @"diet.meals",
             @"diet_id": @"diet.id"
             };
}

+ (NSValueTransformer *)mealsJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[Meal class]];
}

- (NSString *)description {
    return [NSString stringWithFormat: @"%@", [self name]];
}


@end
