//
//  SMSectionController.h
//
//  Created by Mikkel Eide Eriksen on 06/03/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SMSectionController : NSArrayController {
	IBOutlet NSTextView *textView;
}

-(IBAction) markSelection:(id)sender;

@end
