#import "SMRelationship.h"

@implementation SMRelationship

- (NSXMLElement *)XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"relationship"];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[[self toIndividual] id]]];
	[e addAttribute:[NSXMLNode attributeWithName:@"type" stringValue:[self type]]];
	
	return e;
}

- (NSSet *)keyPathsForValuesAffectingXmlElement
{
	return [NSSet setWithObjects:@"id", @"type", nil];
}

@end
