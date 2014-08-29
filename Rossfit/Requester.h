//
//  Requester.h
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFHTTPSessionManager.h>
#import "User.h"


typedef void (^FetchItemsCompletionBlock)(NSArray *items, NSError *error);
typedef void (^FetchUserCompletionBlock)(User *user, NSError *error);

@interface Requester : AFHTTPSessionManager

+ (instancetype)sharedInstance;
- (void) fetchItems: (FetchItemsCompletionBlock)onCompletion;
- (void) login:(NSString *)username password:(NSString *)password onCompletion:(FetchUserCompletionBlock) completionBlock;
- (void) signUp:(NSString *)username email:(NSString *)email password:(NSString *)password confirmation:(NSString *)confirmation onCompletion:(FetchUserCompletionBlock) completionBlock;
@end
