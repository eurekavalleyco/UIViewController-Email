//
//  Attachment.m
//  UIViewController+Email
//
//  Created by Ken M. Haggerty on 1/21/14.
//  Copyright (c) 2014 Ken M. Haggerty All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "Attachment.h"

#pragma mark - // DEFINITIONS (Private) //

@interface Attachment ()
@end

@implementation Attachment

#pragma mark - // SETTERS AND GETTERS //

@synthesize fileData = _fileData;
@synthesize mimeType = _mimeType;
@synthesize fileName = _fileName;

#pragma mark - // INITS AND LOADS //

- (id)init
{
    self = [super init];
    if (self)
    {
        // setup
    }
    return self;
}

- (void)dealloc
{
    // teardown
}

#pragma mark - // PUBLIC METHODS //

+ (Attachment *)attachmentWithAttachment:(Attachment *)attachment
{
    Attachment *newAttachment = nil;
    if (newAttachment)
    {
        newAttachment = [[Attachment alloc] init];
        [newAttachment setFileData:attachment.fileData];
        [newAttachment setMimeType:attachment.mimeType];
        [newAttachment setFileName:attachment.fileName];
    }
    return newAttachment;
}

+ (Attachment *)attachmentWithFile:(NSData *)fileData mimeType:(NSString *)mimeType fileName:(NSString *)fileName
{
    Attachment *attachment = [[Attachment alloc] init];
    if (attachment)
    {
        [attachment setFileData:fileData];
        [attachment setMimeType:mimeType];
        [attachment setFileName:fileName];
    }
    return attachment;
}

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end