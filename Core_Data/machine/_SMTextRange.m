// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMTextRange.m instead.

#import "_SMTextRange.h"

@implementation SMTextRangeID
@end

@implementation _SMTextRange

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SMTextRange" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SMTextRange";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SMTextRange" inManagedObjectContext:moc_];
}

- (SMTextRangeID*)objectID {
	return (SMTextRangeID*)[super objectID];
}




@dynamic location;



- (short)locationValue {
	NSNumber *result = [self location];
	return [result shortValue];
}

- (void)setLocationValue:(short)value_ {
	[self setLocation:[NSNumber numberWithShort:value_]];
}

- (short)primitiveLocationValue {
	NSNumber *result = [self primitiveLocation];
	return [result shortValue];
}

- (void)setPrimitiveLocationValue:(short)value_ {
	[self setPrimitiveLocation:[NSNumber numberWithShort:value_]];
}





@dynamic length;



- (short)lengthValue {
	NSNumber *result = [self length];
	return [result shortValue];
}

- (void)setLengthValue:(short)value_ {
	[self setLength:[NSNumber numberWithShort:value_]];
}

- (short)primitiveLengthValue {
	NSNumber *result = [self primitiveLength];
	return [result shortValue];
}

- (void)setPrimitiveLengthValue:(short)value_ {
	[self setPrimitiveLength:[NSNumber numberWithShort:value_]];
}





@dynamic section;

	





@end
