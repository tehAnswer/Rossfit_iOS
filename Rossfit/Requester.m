//
//  Requester.m
//  RossFit
//
//  Created by Sergio Gijón on 21/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "Requester.h"
#import "Item.h"
#import <AFNetworking/AFNetworkActivityIndicatorManager.h>

static NSString * const baseURL = @"http://api-rossfit.herokuapp.com";


@implementation Requester

+ (instancetype)sharedInstance {
    
    static Requester *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // Network activity indicator manager setup
        [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
        
        // Session configuration setup
        NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
        sessionConfiguration.HTTPAdditionalHeaders = @{
                                                       @"Token"       : @"",
                                                       @"User-Agent"    : @"RossFit"
                                                       };
        
        NSURLCache *cache = [[NSURLCache alloc] initWithMemoryCapacity:10 * 1024 * 1024     // 10MB. memory cache
                                                          diskCapacity:50 * 1024 * 1024     // 50MB. on disk cache
                                                              diskPath:nil];
        
        sessionConfiguration.URLCache = cache;
        sessionConfiguration.requestCachePolicy = NSURLRequestUseProtocolCachePolicy;
        
        // Initialize the session
        _sharedInstance = [[Requester alloc] initWithBaseURL:[NSURL URLWithString:baseURL] sessionConfiguration:sessionConfiguration];
    });
    
    return _sharedInstance;
}

- (instancetype)initWithBaseURL:(NSURL *)url sessionConfiguration:(NSURLSessionConfiguration *)configuration
{
    self = [super initWithBaseURL:url sessionConfiguration:configuration];
    if (!self) return nil;
    
    // Configuraciones adicionales de la sesión
    
    return self;
}


#pragma mark - Fetch

- (void)fetchItems: (FetchItemsCompletionBlock)completionBlock {
    
    NSString *path = @"items";
    [self GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:[responseObject count]];
        
        NSArray *json = [responseObject objectForKey:@"item_list"];
        for (NSDictionary *item_json in [json valueForKey:@"items"]) {
            
            Item *item = [MTLJSONAdapter modelOfClass:[Item class] fromJSONDictionary:item_json error:nil];
            if (item)
                [result addObject:item];
        }
        
        completionBlock(result, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completionBlock(nil, error);
    }];
}

-(void) login:(NSString *)username password:(NSString *)password onCompletion:(FetchUserCompletionBlock) completionBlock {
    NSString *path = [[NSString alloc] initWithFormat: @"login?login[username]=%@&login[password]=%@", username, password];
    [self GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSDictionary *json = [responseObject objectForKey:@"user"];
        User *user = [MTLJSONAdapter modelOfClass:[User class] fromJSONDictionary:json error:nil];
        completionBlock(user, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completionBlock(nil, error);
    }];

}

- (void) signUp:(NSString *)username email:(NSString *)email password:(NSString *)password confirmation:(NSString *)confirmation onCompletion:(FetchUserCompletionBlock) completionBlock {
    
    NSString *path = [[NSString alloc] initWithFormat: @"users?user[username]=%@&user[email]=%@&user[password]=%@&user[password_confirmation]=%@", username, email, password, confirmation];
    [self POST:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSDictionary *json = [responseObject objectForKey:@"user"];
        User *user = [MTLJSONAdapter modelOfClass:[User class] fromJSONDictionary:json error:nil];
        completionBlock(user, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completionBlock(nil, error);
    }];

}

@end
