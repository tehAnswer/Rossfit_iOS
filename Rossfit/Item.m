//
//  Item.m
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "Item.h"

@interface Item() <MTLJSONSerializing>

@end

@implementation Item

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"item_id": @"item.id"
             };
}

- (NSString *)description {
    return [NSString stringWithFormat: @"[Name= %@, id= %@]", [self name], [self item_id]];
}



@end
