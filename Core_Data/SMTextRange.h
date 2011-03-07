#import "_SMTextRange.h"

@interface SMTextRange : _SMTextRange {}

+ (NSString *) type;

@property (assign) NSRange range;
@property (readonly) NSString *stringValue;

@end
