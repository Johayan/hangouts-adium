//
//  PurpleSkypeWebAccount.m
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 21.07.15.
//  Copyright (c) 2015 Tobias Tangemann. All rights reserved.
//

#import "PurpleHangoutsAccount.h"
#import "/Users/john/Development/Hangouts/Frameworks/Adium Framework/Source/AIStatus.h"

@implementation PurpleHangoutsAccount

- (const char*)protocolPlugin
{
    return "prpl-hangouts";
}

- (NSString *)host
{
    return @"api.skype.com";
}

- (const char *)purpleStatusIDForStatus:(AIStatus *)statusState
                              arguments:(NSMutableDictionary *)arguments
{
    char *statusID = NULL;
    
    switch (statusState.statusType) {
        case AIAvailableStatusType:
            statusID = "Online";
            break;
        case AIAwayStatusType:
            statusID = "Away";
            break;
            
        case AIInvisibleStatusType:
            statusID = "Hidden";
            break;
            
        case AIOfflineStatusType:
            statusID = "Offline";
            break;
    }
    
    return statusID;
}

@end
