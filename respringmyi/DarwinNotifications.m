//
//  DarwinNotifications.m
//  respringmyi
//
//  Created by Conor Byrne on 05/01/2020.
//  Copyright © 2020 Conor Byrne. All rights reserved.
//

#import "DarwinNotifications.h"

@implementation DarwinNotifications

-(void)sendRespring {
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("me.conorthedev.respringmyi/RestartSpringboard"), NULL, NULL, YES);
}

@end
