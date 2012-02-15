#import <SpringBoard/SBApplication.h>

%hook SBAwayLockBar
- (void)_slideshowButtonActivated:(id)arg1 {
	[[%c(SBAwayController) sharedAwayController] unlockFromSource:1 playSound:NO];
	SBApplication *app = [[%c(SBApplicationController) sharedInstance] applicationWithDisplayIdentifier:@"com.apple.camera"];
	[[%c(SBUIController) sharedInstance] activateApplicationFromSwitcher:app];
}
%end