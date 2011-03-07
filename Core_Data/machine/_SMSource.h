// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMSource.h instead.

#import <CoreData/CoreData.h>


@class SMSection;
@class SMPlace;





@interface SMSourceID : NSManagedObjectID {}
@end

@interface _SMSource : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMSourceID*)objectID;



@property (nonatomic, retain) NSString *notes;

//- (BOOL)validateNotes:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSData *image;

//- (BOOL)validateImage:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *filename;

//- (BOOL)validateFilename:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* sections;
- (NSMutableSet*)sectionsSet;



@property (nonatomic, retain) NSSet* places;
- (NSMutableSet*)placesSet;




@end

@interface _SMSource (CoreDataGeneratedAccessors)

- (void)addSections:(NSSet*)value_;
- (void)removeSections:(NSSet*)value_;
- (void)addSectionsObject:(SMSection*)value_;
- (void)removeSectionsObject:(SMSection*)value_;

- (void)addPlaces:(NSSet*)value_;
- (void)removePlaces:(NSSet*)value_;
- (void)addPlacesObject:(SMPlace*)value_;
- (void)removePlacesObject:(SMPlace*)value_;

@end

@interface _SMSource (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveNotes;
- (void)setPrimitiveNotes:(NSString*)value;


- (NSData*)primitiveImage;
- (void)setPrimitiveImage:(NSData*)value;


- (NSString*)primitiveFilename;
- (void)setPrimitiveFilename:(NSString*)value;




- (NSMutableSet*)primitiveSections;
- (void)setPrimitiveSections:(NSMutableSet*)value;



- (NSMutableSet*)primitivePlaces;
- (void)setPrimitivePlaces:(NSMutableSet*)value;


@end
