//
//  ItemMeal.m
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "ItemMeal.h"
#import "Item.h"

@interface ItemMeal() <MTLJSONSerializing>

@end

@implementation ItemMeal

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"quantity": @"item_meal.quantity",
             @"item": @"item_meal.item"
             };
}

+ (NSValueTransformer *)itemJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[Item class]];
}

@end
