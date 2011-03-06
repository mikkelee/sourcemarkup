#import "SMSection.h"

#import "SMTextRange.h"

@implementation SMSection

- (NSXMLElement *)XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"section"];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[self id]]];
	[e addChild:[NSXMLNode elementWithName:@"date" stringValue:[self date]]];
	
	NSString *stringVal = [self stringValue];
	NSArray *ranges = [self orderedRanges];
	
	NSLog(@"ranges: %@", ranges);
	
	[e addChild:[NSXMLNode textWithStringValue:[stringVal substringWithRange:NSMakeRange(0, [[ranges objectAtIndex:0] range].location)]]];
	
	for (int idx = 0; idx < [ranges count]-1; idx++) {
		SMTextRange *thisRange = [ranges objectAtIndex:idx];
		SMTextRange *followingRange = [ranges objectAtIndex:idx+1];
		
		[e addChild:[thisRange XMLElement]];
		
		//text between thisRange and followingRange:
		int loc = [thisRange range].location + [thisRange range].length;
		int len = [followingRange range].location - loc;
		NSLog(@"%d + %d", loc, len);
		[e addChild:[NSXMLNode textWithStringValue:[stringVal substringWithRange:NSMakeRange(loc, len)]]];
	}
	
	//last range + trailing text:
	[e addChild:[[ranges lastObject] XMLElement]];
	[e addChild:[NSXMLNode textWithStringValue:[stringVal substringFromIndex:[[ranges lastObject] range].location + [[ranges lastObject] range].length]]];
	
	return e;
}

- (NSSet *)keyPathsForValuesAffectingXmlElement
{
	return [NSSet setWithObjects:@"id", @"date", @"textRanges", nil];
}
-(NSString *) stringValue
{
	return [[[NSAttributedString alloc] initWithRTF:[self text] documentAttributes:NULL] string];
}

-(NSArray *) orderedRanges
{
	return [[[self textRanges] allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end
