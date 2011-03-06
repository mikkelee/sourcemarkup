#import "SMTextRange.h"

@implementation SMTextRange

-(void) setRange:(NSRange)r
{
	[self setLocation:[NSNumber numberWithInt:r.location]];
	[self setLength:[NSNumber numberWithInt:r.length]];
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
