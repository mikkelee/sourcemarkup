#import "SMPlaceReference.h"

@implementation SMPlaceReference

- (NSXMLElement *)XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"place" stringValue:[self stringValue]];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[[self place] id]]];
	
	return e;
}

- (NSSet *)keyPathsForValuesAffectingXmlElement
{
	return [NSSet setWithObjects:@"id", @"place", @"stringValue", nil];
}

@end
