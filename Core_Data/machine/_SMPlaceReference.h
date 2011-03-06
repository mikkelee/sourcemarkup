// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMPlaceReference.h instead.

#import <CoreData/CoreData.h>
#import "SMTextRange.h"

@class SMPlace;


@interface SMPlaceReferenceID : NSManagedObjectID {}
@end

@interface _SMPlaceReference : SMTextRange {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMPlaceReferenceID*)objectID;




@property (nonatomic, retain) SMPlace* place;
//- (BOOL)validatePlace:(id*)value_ error:(NSError**)error_;




@end

@interface _SMPlaceReference (CoreDataGeneratedAccessors)

@end

@interface _SMPlaceReference (CoreDataGeneratedPrimitiveAccessors)



- (SMPlace*)primitivePlace;
- (void)setPrimitivePlace:(SMPlace*)value;


@end
