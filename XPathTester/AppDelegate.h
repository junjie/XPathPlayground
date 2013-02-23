//
//  AppDelegate.h
//  XPathTester
//
//  Created by Lin Junjie on 23/2/13.
//  Copyright (c) 2013 Lin Junjie. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *queryView;
@property (unsafe_unretained) IBOutlet NSTextView *resultsView;
@property (unsafe_unretained) IBOutlet NSTextView *dataView;

- (IBAction)searchWithXPath:(id)sender;
@end
