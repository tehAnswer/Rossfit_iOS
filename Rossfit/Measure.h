//
//  Measure.h
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Measure : MTLModel


@property (strong, nonatomic) NSString *measure_id;
@property (strong, nonatomic) NSString *height;
@property (strong, nonatomic) NSString *weight;
@property (strong, nonatomic) NSString *created_at;
@property (strong, nonatomic) NSString *update_at;


@end
