//
//  Meal.h
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Meal : MTLModel

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *item_meals;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) NSString *meal_id;

@end
