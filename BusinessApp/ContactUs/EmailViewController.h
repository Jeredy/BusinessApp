//
//  EmailViewController.h
//  BusinessApp
//
//  Created by André Almeida on 2022-11-08.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <Accounts/Accounts.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailViewController : UIViewController<MFMailComposeViewControllerDelegate, UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextView *messageField;
@property (weak, nonatomic) IBOutlet UIButton *button1;

- (IBAction)dismissKeyboard:(id)sender;

- (IBAction)send:(id)sender;
@end

NS_ASSUME_NONNULL_END
