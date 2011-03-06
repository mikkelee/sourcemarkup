// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMRelationship.m instead.

#import "_SMRelationship.h"

@implementation SMRelationshipID
@end

@implementation _SMRelationship

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMRelationship" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMRelationship";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMRelationship" inManagedObjectContext:moc_];
}

- (SMRelationshipID*)objectID {
	return (SMRelationshipID*)[super objectID];
}




@dynamic type;






@dynamic toIndividual;

	

@dynamic fromIndividiual;

	





@end
