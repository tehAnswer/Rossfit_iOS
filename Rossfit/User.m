//
//  User.m
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "User.h"
#import "Diet.h"
#import "Measure.h"
#import <Mantle/NSValueTransformer+MTLPredefinedTransformerAdditions.h>

@interface User() <MTLJSONSerializing>

@end

@implementation User


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"name": @"username"
             };
}


+ (NSValueTransformer *)dietsJSONTransformer {
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[Diet class]];
}

+ (NSValueTransformer *)measuresJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[Measure class]];
}

@end
