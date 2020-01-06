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

-(void)sendSafemode {
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("me.conorthedev.respringmyi/SafemodeDevice"), NULL, NULL, YES);
}

-(void)sendUICache {
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("me.conorthedev.respringmyi/RunUICache"), NULL, NULL, YES);
}

-(void)sendLockDevice {
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("me.conorthedev.respringmyi/LockDevice"), NULL, NULL, YES);
}
@end
