//
//  main.m
//  distnote
//
//  Created by Thaddeus on 6/13/14.
//  Copyright (c) 2014 Bluetoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTOmniObserver : NSObject
- (void)listenForEventName:(NSString *)name;
@end

@implementation BTOmniObserver

- (void)listenForEventName:(NSString *)name
{
    NSDistributedNotificationCenter *nc = [NSDistributedNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(omniNotificationReceived:) name:name object:nil];
}

- (void)omniNotificationReceived:(NSNotification *)notification
{
    NSLog(@"%@", notification.name);
    if(notification.object)
        NSLog(@"object(%@): %@", NSStringFromClass([notification.object class]), notification.object);
    if(notification.userInfo)
        NSLog(@"%@", notification.userInfo);
}

@end

#pragma mark -

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        __unused BTOmniObserver *omni = [[BTOmniObserver alloc] init];
        if(argc > 1)
            [omni listenForEventName:[NSString stringWithUTF8String:argv[1]]];
        else
            [omni listenForEventName:nil];

        CFRunLoopRun();
    }
    return 0;
}

