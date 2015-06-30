#import <AMP/RadioStoreBag.h>
#import <AMP/RadioStationSkipController.h>
#import <AMP/RadioPlaybackContext.h>

%hook RadioStoreBag

- (bool)isAdFreeRadioEnabled {
	return TRUE;
}

%end

%hook RadioStationSkipController

- (long long)numberOfAvailableSkips {
	return 9999999;
}

- (bool)hasSkipsEnabled {
	return TRUE;
}

%end

%hook RadioPlaybackContext

- (long long)numberOfSkipsUsed {
	return 0;
}

%end