//
//  Diet.h
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Diet : MTLModel


@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *diet_type;
@property (strong, nonatomic) NSString *diet_id;
@property (strong, nonatomic) NSMutableArray *meals;


@end
