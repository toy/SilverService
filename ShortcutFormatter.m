//
//  ShortcutFormatter.m
//  SilverService
//
//  Created by toy on 08.12.09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ShortcutFormatter.h"


@implementation ShortcutFormatter
- (NSString *)stringForObjectValue:(id)object {
	if ([(NSString *)object length] == 0) {
		return @"";
	} else {
		return [NSString stringWithFormat:@"⌘+%@", (NSString *)object];
	}
}

- (NSString *)editingStringForObjectValue:(id)object {
	return (NSString *)object;
}

- (BOOL)getObjectValue:(id *)object forString:(NSString *)string errorDescription:(NSString **)error {
	*object = string;
	return YES;
}

- (NSAttributedString *)attributedStringForObjectValue:(id)anObject withDefaultAttributes:(NSDictionary *)attributes {
	return nil;
}

- (BOOL)isPartialStringValid:(NSString *)partialString newEditingString:(NSString **)newString errorDescription:(NSString **)error {
	return [partialString length] <= 1;
}
@end
