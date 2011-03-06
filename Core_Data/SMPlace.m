#import "SMPlace.h"

@implementation SMPlace

- (NSXMLElement *)XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"place"];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[self id]]];
	//type
	//geolocation
	//etc
	
	return e;
}

- (NSSet *)keyPathsForValuesAffectingXmlElement
{
	return [NSSet setWithObjects:@"id", nil];
}

@end
