//
//  ItemMeal.h
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "Item.h"
#import "Meal.h"

@interface ItemMeal : MTLModel

@property (strong, nonatomic) Item *item;
@property (strong, nonatomic) NSString *quantity;
@property (strong, nonatomic) Meal *meal;


@end
