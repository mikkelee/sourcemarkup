// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMSource.m instead.

#import "_SMSource.h"

@implementation SMSourceID
@end

@implementation _SMSource

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMSource" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMSource";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMSource" inManagedObjectContext:moc_];
}

- (SMSourceID*)objectID {
	return (SMSourceID*)[super objectID];
}




@dynamic notes;






@dynamic image;






@dynamic filename;






@dynamic sections;

	
- (NSMutableSet*)sectionsSet {
	[self willAccessValueForKey:@"sections"];
	NSMutableSet *result = [self mutableSetValueForKey:@"sections"];
	[self didAccessValueForKey:@"sections"];
	return result;
}
	

@dynamic places;

	
- (NSMutableSet*)placesSet {
	[self willAccessValueForKey:@"places"];
	NSMutableSet *result = [self mutableSetValueForKey:@"places"];
	[self didAccessValueForKey:@"places"];
	return result;
}
	





@end
