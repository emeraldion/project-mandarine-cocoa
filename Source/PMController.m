//
//  PMController.m
//  Project Mandarine
//
//  Created by delphine on 30-05-2008.
//  Copyright 2008 Claudio Procida - Emeraldion Lodge. All rights reserved.
//

#import "PMController.h"

#define EMERALDION_LODGE_URL @"http://www.emeraldion.it?from=project_mandarine"
#define PROJECT_MANDARINE_URL @"http://www.emeraldion.it/software/macosx/project_mandarine.html?from=project_mandarine"

@implementation PMController

- (IBAction)about:(id)sender
{
	if (aboutController == nil)
	{
		aboutController = [[PMAboutController alloc] init];
	}
	[aboutController showWindow:sender];
	[[aboutController window] makeKeyAndOrderFront:sender];
}

- (IBAction)mandarineWebsite:(id)sender
{
#pragma ignored (sender)
	[[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:PROJECT_MANDARINE_URL]];
}

- (IBAction)emeraldionLodgeWebsite:(id)sender
{
#pragma ignored (sender)
	[[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:EMERALDION_LODGE_URL]];
}

- (void)applicationDidFinishLaunching:(NSNotification *)notif
{
	NSString *thePath = [NSString stringWithFormat:@"file:///%@/mandarine_files/mandarine_game.html",
		[[[NSBundle mainBundle] resourcePath] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
	NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:thePath]];
	[[webView mainFrame] loadRequest:theRequest];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
#pragma ignored (sender)
	return YES;
}

@end
