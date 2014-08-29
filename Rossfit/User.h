//
//  User.h
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface User : MTLModel

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSMutableArray *diets;
@property (strong, nonatomic) NSMutableArray *measures;
@property (strong, nonatomic) NSMutableArray *auth_code;

+ (NSValueTransformer *)dietsJSONTransformer;
+ (NSValueTransformer *)measuresJSONTransformer;


@end
