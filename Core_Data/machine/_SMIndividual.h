// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMIndividual.h instead.

#import <CoreData/CoreData.h>
#import "SMTextRange.h"

@class SMRelationship;
@class SMSource;
@class SMRelationship;



@interface SMIndividualID : NSManagedObjectID {}
@end

@interface _SMIndividual : SMTextRange {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMIndividualID*)objectID;



@property (nonatomic, retain) NSString *role;

//- (BOOL)validateRole:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* relatesTo;
- (NSMutableSet*)relatesToSet;



@property (nonatomic, retain) SMSource* source;
//- (BOOL)validateSource:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) SMRelationship* isRelatedTo;
//- (BOOL)validateIsRelatedTo:(id*)value_ error:(NSError**)error_;




@end

@interface _SMIndividual (CoreDataGeneratedAccessors)

- (void)addRelatesTo:(NSSet*)value_;
- (void)removeRelatesTo:(NSSet*)value_;
- (void)addRelatesToObject:(SMRelationship*)value_;
- (void)removeRelatesToObject:(SMRelationship*)value_;

@end

@interface _SMIndividual (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveRole;
- (void)setPrimitiveRole:(NSString*)value;




- (NSMutableSet*)primitiveRelatesTo;
- (void)setPrimitiveRelatesTo:(NSMutableSet*)value;



- (SMSource*)primitiveSource;
- (void)setPrimitiveSource:(SMSource*)value;



- (SMRelationship*)primitiveIsRelatedTo;
- (void)setPrimitiveIsRelatedTo:(SMRelationship*)value;


@end
