//
//  SMSectionController.m
//
//  Created by Mikkel Eide Eriksen on 06/03/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import "SMSectionController.h"

#import "SMSection.h"
#import "SMTextRange.h"
#import "SMIndividual.h"
#import "SMPlaceReference.h"

@implementation SMSectionController

-(IBAction) markSelection:(id)sender
{
	NSManagedObjectContext *ctx = [self managedObjectContext];
	
	SMTextRange *obj;
	SMSection *sec = [[self selectedObjects] lastObject];
	
	if ([sec hasTextRangeOverlappingRange:[textView selectedRange]]) {
		[[NSAlert alertWithMessageText:@"Text ranges may not overlap." defaultButton:nil alternateButton:nil otherButton:nil informativeTextWithFormat:@"Text ranges may not overlap."] runModal];
		return;
	}
	
	if ([[sender title] isEqualToString:@"Individual"]) {
		obj = [SMIndividual insertInManagedObjectContext:ctx];
	} else if ([[sender title] isEqualToString:@"Place"]) {
		obj = [SMPlaceReference insertInManagedObjectContext:ctx];
	}
	
	[obj setSection:sec];
	[obj setRange:[textView selectedRange]];
}

@end
