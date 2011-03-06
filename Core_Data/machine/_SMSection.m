// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMSection.m instead.

#import "_SMSection.h"

@implementation SMSectionID
@end

@implementation _SMSection

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMSection" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMSection";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMSection" inManagedObjectContext:moc_];
}

- (SMSectionID*)objectID {
	return (SMSectionID*)[super objectID];
}




@dynamic rect;






@dynamic text;






@dynamic event;






@dynamic date;






@dynamic source;

	

@dynamic textRanges;

	
- (NSMutableSet*)textRangesSet {
	[self willAccessValueForKey:@"textRanges"];
	NSMutableSet *result = [self mutableSetValueForKey:@"textRanges"];
	[self didAccessValueForKey:@"textRanges"];
	return result;
}
	





@end
