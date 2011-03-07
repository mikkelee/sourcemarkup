#import "SMPlace.h"

@implementation SMPlace

+ (NSString *) idKey
{
	return @"P";
}

- (NSXMLElement *) XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"place"];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[self id]]];
	//type
	//geolocation
	//etc
	
	return e;
}

- (NSSet *) keyPathsForValuesAffectingXMLElement
{
	return [NSSet setWithObjects:@"id", nil];
}

@end
