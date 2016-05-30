//
//  AISkypeWebPlugin.m
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 26.04.15.
//  Copyright (c) 2015 Tobias Tangemann. All rights reserved.
//

#import "AIHangoutsPlugin.h"
#import "PurpleHangoutsService.h"
#import "/Users/john/Development/Hangouts/Hangouts/AIHangoutsPlugin.h"

extern void purple_init_hangouts_plugin();

@implementation HangoutsService : NSObject 
- (void)installPlugin
{
    purple_init_hangouts_plugin();
    [PurpleHangoutService registerService];
}

- (void)loadLibpurplePlugin
{
    }

- (NSString *)pluginAuthor      { return @"John Lamb"; }
- (NSString *)pluginDescription { return @"Hangouts"; }
- (NSString *)pluginURL         { return @"https://github.com/johayan/hangouts-adium"; }
- (NSString *)pluginVersion     { return [[[NSBundle bundleForClass:[self class]] infoDictionary] objectForKey:@"CFBundleVersion"]; }

- (void)uninstallPlugin {}
- (void)installLibpurplePlugin {}

@end
