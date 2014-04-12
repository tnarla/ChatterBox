//
//  HTTPUtil.h
//  ChatterBox
//
//  Created by Stephen Sulivan on 4/12/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPUtil : NSObject <NSURLConnectionDelegate>
{
    NSMutableData* responseData;
    void (^_callback)(NSString*);
    void (^_dCallback)(NSData*);
}
- (void)getHTTPString:(NSString*)url withParams:(NSString*)params withCallback:(void (^)(NSString*))callback;
- (void)postHTTPString:(NSString*)url withParams:(NSString*)params withCallback:(void (^)(NSString*))callback;
- (void)getHTTP:(NSString*)url withParams:(NSString*)params withCallback:(void (^)(NSData*))callback;
- (void)postHTTP:(NSString*)url withParams:(NSString*)params withCallback:(void (^)(NSData*))callback;

@end
