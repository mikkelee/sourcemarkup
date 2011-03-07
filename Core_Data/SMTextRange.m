#import "SMTextRange.h"

@implementation SMTextRange

+ (NSString *) type
{
	return @"ERROR";
}

- (void)prepareForDeletion
{
	NSMutableAttributedString *str = [[[self section] attributedStringValue] mutableCopy];
	
	[str removeAttribute:[[self class] type] range:[self range]];
	[str removeAttribute:NSUnderlineStyleAttributeName range:[self range]];
	[str removeAttribute:NSForegroundColorAttributeName range:[self range]];
	
	[[self section] setAttributedStringValue:str];
}

-(void) setRange:(NSRange)r
{
	NSMutableAttributedString *str = [[[self section] attributedStringValue] mutableCopy];
	
	[str removeAttribute:[[self class] type] range:[self range]];
	
	[self setLocation:[NSNumber numberWithInt:r.location]];
	[self setLength:[NSNumber numberWithInt:r.length]];
	
	[str addAttribute:[[self class] type] value:self range:[self range]];
	[str addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleSingle] range:[self range]];
	[str addAttribute:NSForegroundColorAttributeName value:[NSColor blueColor] range:[self range]];
	
	[[self section] setAttributedStringValue:str];
}

-(NSRange) range
{
	return NSMakeRange([[self location] intValue], [[self length] intValue]);
}

-(NSComparisonResult) compare:(id)other
{
	return [[NSNumber numberWithInt:[self range].location] compare:[NSNumber numberWithInt:[other range].location]];
}

-(NSString *) stringValue
{
	return [[[self section] stringValue] substringWithRange:[self range]];
}

@end
