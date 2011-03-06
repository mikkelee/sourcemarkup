//
//  SMSourceController.m
//
//  Created by Mikkel Eide Eriksen on 06/03/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import "SMSourceController.h"
#import "SMSource.h"

@implementation SMSourceController

- (IBAction)logXML:(id)sender
{
	NSLog(@"Test: %@", [[[self selectedObjects] lastObject] XMLElement]);
}

@end
