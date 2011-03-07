#import "SMSection.h"

#import "SMTextRange.h"

@implementation SMSection

+ (NSString *) idKey
{
	return @"S";
}

-(BOOL) hasTextRangeOverlappingRange:(NSRange)r
{
	for (SMTextRange *textRange in [self orderedRanges]) {
		if (NO) { //TODO
			return YES;
		}
	}
	
	return NO;
}

- (NSXMLElement *) XMLElement
{
	NSXMLElement *e = [NSXMLNode elementWithName:@"section"];
	
	[e addAttribute:[NSXMLNode attributeWithName:@"id" stringValue:[self id]]];
	[e addChild:[NSXMLNode elementWithName:@"date" stringValue:[self date]]];
	
	NSString *stringVal = [self stringValue];
	NSArray *ranges = [self orderedRanges];
	
	[e addChild:[NSXMLNode textWithStringValue:[stringVal substringWithRange:NSMakeRange(0, [[ranges objectAtIndex:0] range].location)]]];
	
	for (int idx = 0; idx < [ranges count]-1; idx++) {
		SMTextRange *thisRange = [ranges objectAtIndex:idx];
		SMTextRange *followingRange = [ranges objectAtIndex:idx+1];
		
		[e addChild:[thisRange XMLElement]];
		
		//text between thisRange and followingRange:
		int loc = NSMaxRange([thisRange range]);
		int len = [followingRange range].location - loc;
		[e addChild:[NSXMLNode textWithStringValue:[stringVal substringWithRange:NSMakeRange(loc, len)]]];
	}
	
	//last range + trailing text:
	[e addChild:[[ranges lastObject] XMLElement]];
	[e addChild:[NSXMLNode textWithStringValue:[stringVal substringFromIndex:[[ranges lastObject] range].location + [[ranges lastObject] range].length]]];
	
	return e;
}

- (NSSet *) keyPathsForValuesAffectingXMLElement
{
	return [NSSet setWithObjects:@"id", @"date", @"textRanges", nil];
}

-(NSAttributedString *) attributedStringValue
{
	return [[NSAttributedString alloc] initWithRTF:[self text] documentAttributes:nil];
}

-(void) setAttributedStringValue:(NSAttributedString *)s
{
	[self setText:[s RTFFromRange:NSMakeRange(0, [s length]) documentAttributes:nil]];
}

- (NSSet *) keyPathsForValuesAffectingAttributedStringValue
{
	return [NSSet setWithObjects:@"text", nil];
}

-(NSString *) stringValue
{
	return [[self attributedStringValue] string];
}

- (NSSet *) keyPathsForValuesAffectingStringValue
{
	return [NSSet setWithObjects:@"text", nil];
}

-(NSArray *) orderedRanges
{
	return [[[self textRanges] allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end
