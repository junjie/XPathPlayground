//
//  AppDelegate.m
//  XPathTester
//
//  Created by Lin Junjie on 23/2/13.
//  Copyright (c) 2013 Lin Junjie. All rights reserved.
//

#import "AppDelegate.h"
#import "TFHpple.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	NSFont *font = [NSFont fontWithName:@"Menlo" size:12.0];
	self.dataView.font = font;
	self.queryView.font = font;
	self.resultsView.font = font;
}

- (NSArray *)XPathResultsFromString:(NSString *)string query:(NSString *)query
{
	NSData *stringUnicode = [string dataUsingEncoding:NSUnicodeStringEncoding];
	TFHpple *doc = [[TFHpple alloc] initWithHTMLData:stringUnicode];
	
	NSArray *elements = [doc searchWithXPathQuery:query];
	return elements;
}

- (IBAction)searchWithXPath:(id)sender {
	NSArray *results =
	[self XPathResultsFromString:self.dataView.string query:self.queryView.string];
	self.resultsView.string = results.description;
}
@end
