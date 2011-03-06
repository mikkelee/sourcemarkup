// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMPlace.h instead.

#import <CoreData/CoreData.h>
#import "SMObject.h"

@class SMSource;
@class SMPlaceReference;


@interface SMPlaceID : NSManagedObjectID {}
@end

@interface _SMPlace : SMObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMPlaceID*)objectID;




@property (nonatomic, retain) SMSource* source;
//- (BOOL)validateSource:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) SMPlaceReference* references;
//- (BOOL)validateReferences:(id*)value_ error:(NSError**)error_;




@end

@interface _SMPlace (CoreDataGeneratedAccessors)

@end

@interface _SMPlace (CoreDataGeneratedPrimitiveAccessors)



- (SMSource*)primitiveSource;
- (void)setPrimitiveSource:(SMSource*)value;



- (SMPlaceReference*)primitiveReferences;
- (void)setPrimitiveReferences:(SMPlaceReference*)value;


@end
