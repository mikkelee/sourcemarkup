#import "SMPlaceReference.h"

@implementation SMPlaceReference

+ (NSString *) type
{
	return @"Place";
}

- (NSXMLElement *) XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"place" stringValue:[self stringValue]];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[[self place] valueForKey:@"id"]]];
	
	return e;
}

- (NSSet *) keyPathsForValuesAffectingXMLElement
{
	return [NSSet setWithObjects:@"id", @"place", @"stringValue", nil];
}

@end
