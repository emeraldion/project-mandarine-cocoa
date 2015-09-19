//
//  PMController.h
//  Project Mandarine
//
//  Created by delphine on 30-05-2008.
//  Copyright 2008 Claudio Procida - Emeraldion Lodge. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@class PMAboutController;

@interface PMController : NSObject {

@private
	IBOutlet WebView *webView;
	PMAboutController *aboutController;
}

/*!
 @method about:
 @abstract Reveals the about panel.
 @param sender The sender of the action.
 */
- (IBAction)about:(id)sender;

/*!
 @method mandarineWebsite:
 @abstract Opens the Project Mandarine website in the default web browser.
 @param sender The sender of the action.
 */
- (IBAction)mandarineWebsite:(id)sender;

/*!
 @method emeraldionLodgeWebsite:
 @abstract Opens the Emeraldion Lodge website in the default web browser.
 @param sender The sender of the action.
 */
- (IBAction)emeraldionLodgeWebsite:(id)sender;

@end
