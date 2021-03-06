//
//  ViewController.m
//  HelloiOS
//
//  Created by Glenn Posadas on 1/6/22.
//

#import "ViewController.h"

/**
 
 ACTIVITY:
 
 1. when button is tapped, put the textField's text value into the label.
 2. clear out the textField's text.
 
 
 Notes:
 null in iOS (Swift and Objective-C) is nil.
 to clear an NSString, set it to nil or "" .
 
 
 */

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
  NSLog(@"Button was tapped!");

  self.label.text = self.textField.text;
  self.textField.text = @"";
  
  
  // set label text color or foreground color
  UIColor *myTextColor = UIColor.whiteColor;
  self.label.textColor = myTextColor;
  
  // set label background color
  // from google: rgba(99, 110, 114,1.0)
  UIColor *textBGColor = [UIColor colorWithRed:99.0/255.0
                                         green:110.0/255.0
                                          blue:114.0/255.0
                                         alpha:1.0];
  self.label.backgroundColor = textBGColor;
  
  // won't work!
  //self.button.titleLabel.text = @"BUTTON WAS TAPPED!~";
  // works!
  [self.button setTitle:@"Button was tapped!"
               forState:UIControlStateNormal];

}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.label.text = @"Hello, World!";
  
  [self.button setTitle:@"HEY THIS IS HIGHLIGHTED STATE"
               forState:UIControlStateHighlighted];
  
  //[self printHelloWorld];
//  [self printThisString:@"Hey!"];
//
//  NSString *string1;
//  string1 = @"This is string1";
//
//  [self printThisString:string1];
//
//  NSString *a = @"🔥";
//  NSString *b = @"🇵🇭";
//  int simpleNum = 69;
//
//  NSString *string2;
//  string2 = [NSString stringWithFormat:@"This is a formatted string %@, another string %@, with a number: %d", a, b, simpleNum];
//
//  [self printThisString:string2];
}

- (void)printThisString:(NSString *)someStringName {
  NSLog(@"printThisString ---> %@", someStringName);
}


- (void)printHelloWorld {
  NSString *newObjectString = @"Hello, World! 🇨🇦!!!";
  
  NSString *lowerCasedHelloWorld = newObjectString.lowercaseString;
  
  NSLog(@"lowercaseString ---> %@", lowerCasedHelloWorld);
  
  NSString *capitalizedString = [lowerCasedHelloWorld capitalizedString];
  
  NSLog(@"capitalizedString -> %@", capitalizedString);
  
  NSUInteger len = newObjectString.length;
  unsigned long len2 = newObjectString.length;
  
  NSLog(@"The number of characters in newObjectString is: %ld", len);
  NSLog(@"The number of chars in newObjectString using unsigned long is: %ld", len2);

}


@end
