//
//  UIViewController+Email.h
//  UIViewController+Email
//
//  Created by Ken M. Haggerty on 1/21/14.
//  Copyright (c) 2014 Ken M. Haggerty All rights reserved.
//
//  For full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "Attachment.h"

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

@interface UIViewController (Email) <MFMailComposeViewControllerDelegate>
- (BOOL)emailInCurrentAppWithSubject:(NSString *)subject body:(NSString *)html attachments:(NSArray *)attachments to:(NSArray *)toRecipients cc:(NSArray *)ccRecipients bcc:(NSArray *)bccRecipients completionBlock:(void (^)(void))completionBlock;
@end