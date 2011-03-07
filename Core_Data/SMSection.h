#import "_SMSection.h"

@interface SMSection : _SMSection {}

-(BOOL) hasTextRangeOverlappingRange:(NSRange)r;

@property (assign) NSAttributedString *attributedStringValue;
@property (readonly) NSString *stringValue;

@property (readonly) NSArray *orderedRanges;

@end
