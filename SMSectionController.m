//
//  SMSectionController.m
//
//  Created by Mikkel Eide Eriksen on 06/03/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import "SMSectionController.h"

#import "SMTextRange.h"
#import "SMIndividual.h"
#import "SMPlaceReference.h"

@implementation SMSectionController

-(IBAction) markSelection:(id)sender
{
	NSManagedObjectContext *ctx = [self managedObjectContext];
	
	for (id rangeObj in [textView selectedRanges]) {
		NSRange range = [rangeObj rangeValue];
		SMTextRange *obj;
		
		if ([[sender title] isEqualToString:@"Individual"]) {
			obj = [SMIndividual insertInManagedObjectContext:ctx];
			[obj setValue:@"present" forKey:@"role"];
		} else if ([[sender title] isEqualToString:@"Place"]) {
			obj = [SMPlaceReference insertInManagedObjectContext:ctx];
		}
		
		[obj setSection:[[self selectedObjects] lastObject]];
		[obj setRange:range];
	}
}

@end
