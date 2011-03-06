// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SMSection.h instead.

#import <CoreData/CoreData.h>
#import "SMObject.h"

@class SMSource;
@class SMTextRange;






@interface SMSectionID : NSManagedObjectID {}
@end

@interface _SMSection : SMObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SMSectionID*)objectID;



@property (nonatomic, retain) NSString *rect;

//- (BOOL)validateRect:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSData *text;

//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *event;

//- (BOOL)validateEvent:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *date;

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) SMSource* source;
//- (BOOL)validateSource:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSSet* textRanges;
- (NSMutableSet*)textRangesSet;




@end

@interface _SMSection (CoreDataGeneratedAccessors)

- (void)addTextRanges:(NSSet*)value_;
- (void)removeTextRanges:(NSSet*)value_;
- (void)addTextRangesObject:(SMTextRange*)value_;
- (void)removeTextRangesObject:(SMTextRange*)value_;

@end

@interface _SMSection (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveRect;
- (void)setPrimitiveRect:(NSString*)value;


- (NSData*)primitiveText;
- (void)setPrimitiveText:(NSData*)value;


- (NSString*)primitiveEvent;
- (void)setPrimitiveEvent:(NSString*)value;


- (NSString*)primitiveDate;
- (void)setPrimitiveDate:(NSString*)value;




- (SMSource*)primitiveSource;
- (void)setPrimitiveSource:(SMSource*)value;



- (NSMutableSet*)primitiveTextRanges;
- (void)setPrimitiveTextRanges:(NSMutableSet*)value;


@end
