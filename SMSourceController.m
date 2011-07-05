//
//  SMSourceController.m
//
//  Created by Mikkel Eide Eriksen on 06/03/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import "SMSourceController.h"
#import "SMObject.h"

@implementation SMSourceController

- (IBAction)logXML:(id)sender
{
	NSLog(@"Test: %@", [(SMObject*)[[self selectedObjects] lastObject] XMLElement]);
}

@end
