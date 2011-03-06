// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMObject.m instead.

#import "_SMObject.h"

@implementation SMObjectID
@end

@implementation _SMObject

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMObject" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMObject";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMObject" inManagedObjectContext:moc_];
}

- (SMObjectID*)objectID {
	return (SMObjectID*)[super objectID];
}




@dynamic id;










@end
