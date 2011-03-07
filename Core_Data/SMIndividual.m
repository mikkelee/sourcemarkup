#import "SMIndividual.h"

@implementation SMIndividual

+ (NSString *) idKey
{
	return @"I";
}

+ (NSString *) type
{
	return @"Individual";
}

- (void) awakeFromInsert
{
	[super awakeFromInsert];
	
	[self setPrimitiveValue:@"present" forKey:@"role"];
}

+ (SMIndividual *) fromXMLElement:(NSXMLElement *)e inContext:(NSManagedObjectContext *)ctx
{
	SMIndividual *this = [SMIndividual insertInManagedObjectContext:ctx];
	
	[this setId:[[e attributeForName:@"id"] stringValue]];
	[this setRole:[[e attributeForName:@"role"] stringValue]];
	
	return this;
}

- (NSXMLElement *) XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"individual" stringValue:[self stringValue]];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[self id]]];
	[e addAttribute:[NSXMLNode attributeWithName:@"role" stringValue:[self role]]];
	//relationship
	
	return e;
}

- (NSSet *) keyPathsForValuesAffectingXMLElement
{
	return [NSSet setWithObjects:@"id", @"stringValue", @"role", nil];
}

@end
