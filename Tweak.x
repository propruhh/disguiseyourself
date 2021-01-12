#import <Foundation/Foundation.h>
#import "PSSpecifier.h"

NSString* name() {
	CFPreferencesAppSynchronize(CFSTR("com.propr.disguiseyourself"));
	NSDictionary *preferences = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.propr.disguiseyourself.plist"];

	return [preferences valueForKey:@"nameCell"];
}

BOOL isEnabled() {
	CFPreferencesAppSynchronize(CFSTR("com.propr.disguiseyourself"));
	NSDictionary *preferences = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.propr.disguiseyourself.plist"];

	return preferences[@"isEnabled"] ? [preferences[@"isEnabled"] boolValue] : NO;
}

%hook PSUIAppleAccountCell

-(void)setSpecifier:(PSSpecifier*)specifier {
	%orig;
	
	if (isEnabled()) {
		[specifier setProperty:name() forKey:@"label"];
	} else {
		%orig;
	}
	
}

%end

%hook PSBadgedTableCell

	

%end

// %hook AAUILabel
	
// -(void)setSpecifier:(PSSpecifier*)specifier {
// 	%orig;
	
// 	if (isEnabled()) {
// 		[specifier setProperty:name() forKey:@"text"];
// 	} else {
// 		%orig;
// 	}
	
// }

// %end
