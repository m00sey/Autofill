//
//  AutofillAppDelegate.h
//  Autofill
//
//  Created by Kevin Griffin on 9/8/10.
//  Copyright Chariot Solutions LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterForm.h"

@interface AutofillAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RegisterForm *registerForm;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

