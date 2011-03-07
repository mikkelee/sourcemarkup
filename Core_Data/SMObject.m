#import "SMObject.h"

@implementation SMObject

@dynamic XMLElement;

+ (NSString *) idKey
{
	return @"INVALID";
}

- (void)awakeFromInsert
{
	[super awakeFromInsert];
	
	NSFetchRequest *request = [[NSFetchRequest alloc] init];
	[request setEntity:[self entity]];
	[request setFetchLimit:1];
	
	NSArray *propertiesArray = [[NSArray alloc] initWithObjects:@"id", nil];
	[request setPropertiesToFetch:propertiesArray];
	[propertiesArray release], propertiesArray = nil;
	
	NSSortDescriptor *idSort = [[NSSortDescriptor alloc] initWithKey:@"id" ascending:NO];
	NSArray *array = [[NSArray alloc] initWithObjects:idSort, nil];
	[request setSortDescriptors:array];
	[array release], array = nil;
	[idSort release], idSort = nil;
	
	NSError *error = nil;
	NSManagedObject *maxIdedObject = [[[self managedObjectContext] executeFetchRequest:request error:&error] lastObject];
	[request release], request = nil;
	NSAssert2(error == nil, @"Error fetching id: %@\n%@", [error localizedDescription], [error userInfo]);
	
	NSInteger myId = 1;
	if (maxIdedObject) {
		myId = [[maxIdedObject valueForKey:@"id"] integerValue] + 1;
	}
	
    [self setPrimitiveId:[NSString stringWithFormat:@"%@%d", [[self class] idKey], myId]];
}

@end
