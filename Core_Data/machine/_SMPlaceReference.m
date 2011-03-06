// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMPlaceReference.m instead.

#import "_SMPlaceReference.h"

@implementation SMPlaceReferenceID
@end

@implementation _SMPlaceReference

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMPlaceReference" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMPlaceReference";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMPlaceReference" inManagedObjectContext:moc_];
}

- (SMPlaceReferenceID*)objectID {
	return (SMPlaceReferenceID*)[super objectID];
}




@dynamic place;

	





@end
