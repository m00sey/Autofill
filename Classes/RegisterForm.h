//
//  RegisterForm.h
//  Autofill
//
//  Created by Kevin Griffin on 9/8/10.
//  Copyright 2010 Chariot Solutions LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBookUI/AddressBookUI.h>

@interface RegisterForm : UIViewController <ABPeoplePickerNavigationControllerDelegate> {
    IBOutlet UIButton *btnAutofil;
    IBOutlet UITextField *txtFirstName;
    IBOutlet UITextField *txtLastName;
    IBOutlet UITextField *txtEmail;
    
    ABPeoplePickerNavigationController *peoplePicker;
}

- (IBAction) autofill;
@end
