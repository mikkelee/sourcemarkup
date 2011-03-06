// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMRelationship.h instead.

#import <CoreData/CoreData.h>
#import "SMObject.h"

@class SMIndividual;
@class SMIndividual;



@interface SMRelationshipID : NSManagedObjectID {}
@end

@interface _SMRelationship : SMObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMRelationshipID*)objectID;



@property (nonatomic, retain) NSString *type;

//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) SMIndividual* toIndividual;
//- (BOOL)validateToIndividual:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) SMIndividual* fromIndividiual;
//- (BOOL)validateFromIndividiual:(id*)value_ error:(NSError**)error_;




@end

@interface _SMRelationship (CoreDataGeneratedAccessors)

@end

@interface _SMRelationship (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;




- (SMIndividual*)primitiveToIndividual;
- (void)setPrimitiveToIndividual:(SMIndividual*)value;



- (SMIndividual*)primitiveFromIndividiual;
- (void)setPrimitiveFromIndividiual:(SMIndividual*)value;


@end
