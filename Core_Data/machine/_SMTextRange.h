// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMTextRange.h instead.

#import <CoreData/CoreData.h>
#import "SMObject.h"

@class SMSection;




@interface SMTextRangeID : NSManagedObjectID {}
@end

@interface _SMTextRange : SMObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMTextRangeID*)objectID;



@property (nonatomic, retain) NSNumber *location;

@property short locationValue;
- (short)locationValue;
- (void)setLocationValue:(short)value_;

//- (BOOL)validateLocation:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *length;

@property short lengthValue;
- (short)lengthValue;
- (void)setLengthValue:(short)value_;

//- (BOOL)validateLength:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) SMSection* section;
//- (BOOL)validateSection:(id*)value_ error:(NSError**)error_;




@end

@interface _SMTextRange (CoreDataGeneratedAccessors)

@end

@interface _SMTextRange (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveLocation;
- (void)setPrimitiveLocation:(NSNumber*)value;

- (short)primitiveLocationValue;
- (void)setPrimitiveLocationValue:(short)value_;


- (NSNumber*)primitiveLength;
- (void)setPrimitiveLength:(NSNumber*)value;

- (short)primitiveLengthValue;
- (void)setPrimitiveLengthValue:(short)value_;




- (SMSection*)primitiveSection;
- (void)setPrimitiveSection:(SMSection*)value;


@end
