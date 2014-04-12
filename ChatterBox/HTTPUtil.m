//
//  HTTPUtil.m
//  ChatterBox
//
//  Created by Stephen Sulivan on 4/12/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import "HTTPUtil.h"

@implementation HTTPUtil

- (void) getHTTP:(NSString *)url withParams:(NSString *)params withCallback:(void (^)(NSString*))callback {
    _callback = callback;
    NSMutableURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@?%@",url,params]]];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

- (void) postHTTP:(NSString *)url withParams:(NSString *)params withCallback:(void (^)(NSString*))callback {
    _callback = callback;
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    request.HTTPMethod = @"POST";
    [request setValue:@"application/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    NSData* requestBodyData = [params dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPBody = requestBodyData;
    NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

#pragma mark NSURLConnection Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"responsed");
    responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"got something");
    [responseData appendData:data];
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    _callback([[NSString alloc] initWithData:responseData encoding:NSASCIIStringEncoding]);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
    NSLog(@"%@",error);
}


@end
