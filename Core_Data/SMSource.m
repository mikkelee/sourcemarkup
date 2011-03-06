#import "SMSource.h"

#import "SMPlace.h"
#import "SMSection.h"

@implementation SMSource

- (NSXMLElement *)XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"source"];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[self id]]];
	//[e addChild:[NSXMLNode elementWithName:@"reference" stringValue:];
	
	NSXMLElement *sectionElements = [NSXMLNode elementWithName:@"sections"];
	
	for (SMSection *section in [self sections]) {
		[sectionElements addChild:[section XMLElement]];
	}
	
	[e addChild:sectionElements];
	
	NSXMLElement *placeElements = [NSXMLNode elementWithName:@"places"];
	
	for (SMPlace *places in [self places]) {
		[placeElements addChild:[places XMLElement]];
	}
	
	[e addChild:placeElements];
	
	return e;
}

- (NSSet *)keyPathsForValuesAffectingXmlElement
{
	NSLog(@"%s (line %d)", __FUNCTION__, __LINE__);
	return [NSSet setWithObjects:@"id", @"places", @"sections", nil];
}

- (NSXMLDocument *)xmlDoc
{
	return [[NSXMLDocument alloc] initWithRootElement:[self XMLElement]];
}

- (NSSet *)keyPathsForValuesAffectingXmlDoc
{
	NSLog(@"%s (line %d)", __FUNCTION__, __LINE__);
	return [NSSet setWithObjects:@"xmlElement", @"xmlDoc.XMLData", nil];
}

@end
