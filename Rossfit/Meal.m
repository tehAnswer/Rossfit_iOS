//
//  Meal.m
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "Meal.h"
#import "ItemMeal.h"

@interface Meal() <MTLJSONSerializing>

@end

@implementation Meal

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"meal_id": @"meal.id",
             @"item_meals" : @"meal.item_meals",
             @"time" : @"meal.time",
             @"name" : @"meal.name"
             };
}

+ (NSValueTransformer *)item_mealsJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[ItemMeal class]];
}


@end
