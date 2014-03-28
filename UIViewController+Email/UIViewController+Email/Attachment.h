//
//  Attachment.h
//  UIViewController+Email
//
//  Created by Ken M. Haggerty on 1/21/14.
//  Copyright (c) 2014 Ken M. Haggerty All rights reserved.
//

#pragma mark - // NOTES (Public) //

// For a full list of MIME types, please visit:
// http://www.iana.org/assignments/media-types/

#pragma mark - // IMPORTS (Public) //

#import <Foundation/Foundation.h>

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

@interface Attachment : NSObject
@property (nonatomic, strong) NSData *fileData;
@property (nonatomic, strong) NSString *mimeType;
@property (nonatomic, strong) NSString *fileName;
+ (Attachment *)attachmentWithAttachment:(Attachment *)attachment;
+ (Attachment *)attachmentWithFile:(NSData *)fileData mimeType:(NSString *)mimeType fileName:(NSString *)fileName;
@end