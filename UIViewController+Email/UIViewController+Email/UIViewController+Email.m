//
//  UIViewController+Email.m
//  UIViewController+Email
//
//  Created by Ken M. Haggerty on 1/21/14.
//  Copyright (c) 2014 Ken M. Haggerty All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "UIViewController+Email.h"

#pragma mark - // DEFINITIONS (Private) //

@implementation UIViewController (Email)

#pragma mark - // SETTERS AND GETTERS //

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

- (BOOL)emailInCurrentAppWithSubject:(NSString *)subject body:(NSString *)html attachments:(NSArray *)attachments to:(NSArray *)toRecipients cc:(NSArray *)ccRecipients bcc:(NSArray *)bccRecipients completionBlock:(void (^)(void))completionBlock
{
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mailView = [[MFMailComposeViewController alloc] init];
        [mailView setMailComposeDelegate:self];
        [mailView setSubject:subject];
        [mailView setMessageBody:html isHTML:YES];
        for (Attachment *attachment in attachments)
        {
            [mailView addAttachmentData:attachment.fileData mimeType:attachment.mimeType fileName:attachment.fileName];
        }
        [mailView setToRecipients:toRecipients];
        [mailView setCcRecipients:ccRecipients];
        [mailView setBccRecipients:bccRecipients];
        [self presentViewController:mailView animated:YES completion:completionBlock];
        return YES;
    }
    return NO;
}

#pragma mark - // DELEGATED METHODS (MFMailComposeViewControllerDelegate) //

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end