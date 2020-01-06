#import <Foundation/Foundation.h>

@interface DarwinNotifications : NSObject
-(void)sendRespring;
-(void)sendSafemode;
-(void)sendUICache;
-(void)sendLockDevice;
@end
