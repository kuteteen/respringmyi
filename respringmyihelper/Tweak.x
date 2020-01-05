#include <spawn.h>

void reloadSpringboard() {
	pid_t pid;
	const char* args[] = {"killall", "-9", "SpringBoard", NULL};
	posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

%ctor {
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)reloadSpringboard, CFSTR("me.conorthedev.respringmyi/RestartSpringboard"), NULL, kNilOptions);
}