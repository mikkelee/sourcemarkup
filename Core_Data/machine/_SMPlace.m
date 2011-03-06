// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMPlace.m instead.

#import "_SMPlace.h"

@implementation SMPlaceID
@end

@implementation _SMPlace

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMPlace" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMPlace";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMPlace" inManagedObjectContext:moc_];
}

- (SMPlaceID*)objectID {
	return (SMPlaceID*)[super objectID];
}




@dynamic source;

	

@dynamic references;

	





@end
