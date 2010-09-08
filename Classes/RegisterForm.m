//
//  RegisterForm.m
//  Autofill
//
//  Created by Kevin Griffin on 9/8/10.
//  Copyright 2010 Chariot Solutions LLC. All rights reserved.
//

#import "RegisterForm.h"

@implementation RegisterForm

- (IBAction) autofill {
    if (!peoplePicker) {
        peoplePicker = [[ABPeoplePickerNavigationController alloc] init];
        [peoplePicker setPeoplePickerDelegate:self];
    }
    
    [self presentModalViewController:peoplePicker animated:YES];
}

#pragma mark -
#pragma mark Address book delegates
- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person {
    return NO;
}

- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier {
    
    NSString *firstName = (NSString *)ABRecordCopyValue(person, kABPersonFirstNameProperty);
    NSString *lastName = (NSString *)ABRecordCopyValue(person, kABPersonLastNameProperty);
    NSString *email = (NSString *)ABRecordCopyValue(person, kABPersonEmailProperty);
    
    [txtFirstName setText:firstName];
    [txtLastName setText:lastName];
    [txtEmail setText:email];
    
    [firstName release];
    [lastName release];
    [email release]; 
    return NO;    
}

- (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
