// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMIndividual.m instead.

#import "_SMIndividual.h"

@implementation SMIndividualID
@end

@implementation _SMIndividual

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMIndividual" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMIndividual";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMIndividual" inManagedObjectContext:moc_];
}

- (SMIndividualID*)objectID {
	return (SMIndividualID*)[super objectID];
}




@dynamic role;






@dynamic relatesTo;

	
- (NSMutableSet*)relatesToSet {
	[self willAccessValueForKey:@"relatesTo"];
	NSMutableSet *result = [self mutableSetValueForKey:@"relatesTo"];
	[self didAccessValueForKey:@"relatesTo"];
	return result;
}
	

@dynamic source;

	

@dynamic isRelatedTo;

	





@end
