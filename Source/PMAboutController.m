//
//  PMAboutController.m
//  Project Mandarine
//
//  Created by delphine on 31-05-2008.
//  Copyright 2008 Claudio Procida - Emeraldion Lodge. All rights reserved.
//

#import "PMAboutController.h"


@implementation PMAboutController

- (id)init
{
	if (self = [super initWithWindowNibName:@"About"])
	{
	}
	return self;
}

- (void)windowDidLoad
{
	NSString *thePath = [NSString stringWithFormat:@"file:///%@/mandarine_files/mandarine_about.html",
		[[[NSBundle mainBundle] resourcePath] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
	NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:thePath]];
	[[webView mainFrame] loadRequest:theRequest];	
}

@end
