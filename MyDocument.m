//
//  MyDocument.m
//  SourceMarkup
//
//  Created by Mikkel Eide Eriksen on 06/03/11.
//  Copyright Mikkel Eide Eriksen 2011 . All rights reserved.
//

#import "MyDocument.h"

#import "SMSection.h"
#import "SMTextRange.h"
#import "SMPlaceReference.h"
#import "SMPlace.h"
#import "SMIndividual.h"
#import "SMSource.h"

@implementation MyDocument

- (id)init 
{
    self = [super init];
    if (self != nil) {
        // initialization code
    }
    return self;
}

- (NSString *)windowNibName 
{
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)windowController 
{
    [super windowControllerDidLoadNib:windowController];
    // user interface preparation code
}

@end
