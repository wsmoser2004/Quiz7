//
//  Quiz7DetailViewController.h
//  Quiz7
//
//  Created by Moser, Wesley on 4/7/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quiz7DetailViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UIDatePicker *dueDatePicker;

- (IBAction)saveClick:(id)sender;
- (IBAction)urgencyChanged:(id)sender;

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) void (^dismissBlock)(void);

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
