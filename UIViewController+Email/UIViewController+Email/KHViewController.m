//
//  KHViewController.m
//  UIViewController+Email
//
//  Created by Ken M. Haggerty on 3/28/14.
//  Copyright (c) 2014 Ken M. Haggerty. All rights reserved.
//
//  For full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "KHViewController.h"

#pragma mark - // DEFINITIONS (Private) //

#define EMAIL_SUBJECT @"Hello Ken!"
#define EMAIL_BODY @"I'm using UIViewController+Email to send emails easily from within my app!<br/><br/>This category makes it really easy to compose emails with multiple recipients and even attachments."
#define EMAIL_TO @"kenmhaggerty@gmail.com"
#define PNG_FILENAME @"empire@2x.png"

@interface KHViewController ()
- (void)setup;
- (void)teardown;
- (IBAction)buttonActionEmail:(UIButton *)sender;
@end

@implementation KHViewController

#pragma mark - // SETTERS AND GETTERS //

#pragma mark - // INITS AND LOADS //

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [self teardown];
}

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    // setup
}

- (void)teardown
{
    // teardown
}

- (IBAction)buttonActionEmail:(UIButton *)sender
{
    [self emailInCurrentAppWithSubject:EMAIL_SUBJECT body:EMAIL_BODY attachments:[NSArray arrayWithObject:[Attachment attachmentWithFile:UIImagePNGRepresentation([UIImage imageNamed:PNG_FILENAME]) mimeType:@"image/png" fileName:PNG_FILENAME]] to:[NSArray arrayWithObject:EMAIL_TO] cc:nil bcc:nil completionBlock:nil];
}

@end