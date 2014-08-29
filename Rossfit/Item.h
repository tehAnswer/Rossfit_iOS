//
//  Item.h
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Item : MTLModel

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *item_id;
@property (strong, nonatomic) NSString *item_type;
@property (strong, nonatomic) NSString *carbohydrates;
@property (strong, nonatomic) NSString *fat;
@property (strong, nonatomic) NSString *protein;
@property (strong, nonatomic) NSString *calories;


@end
