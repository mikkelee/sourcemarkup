// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMObject.h instead.

#import <CoreData/CoreData.h>





@interface SMObjectID : NSManagedObjectID {}
@end

@interface _SMObject : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMObjectID*)objectID;



@property (nonatomic, retain) NSString *id;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;





@end

@interface _SMObject (CoreDataGeneratedAccessors)

@end

@interface _SMObject (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;



@end
