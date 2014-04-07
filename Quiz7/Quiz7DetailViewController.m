//
//  Quiz7DetailViewController.m
//  Quiz7
//
//  Created by Moser, Wesley on 4/7/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import "Quiz7DetailViewController.h"
#import "Task.h"

@interface Quiz7DetailViewController ()
- (void)configureView;
@end

@implementation Quiz7DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
//        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
        Task *theTask = (Task *)(self.detailItem);
        self.nameField.text = theTask.name;
        self.urgencySlider.value = [theTask.urgency floatValue];
        self.urgencyLabel.text = [NSString stringWithFormat:@"Urgency: %.0f",
                                  [theTask.urgency floatValue]];
        self.dueDatePicker.date = theTask.dueDate;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveClick:(id)sender
{
    Task *theTask = (Task *)(self.detailItem);
    theTask.name = self.nameField.text;
    theTask.urgency = [NSNumber numberWithFloat:self.urgencySlider.value];
    theTask.dueDate = self.dueDatePicker.date;
    
    [[self presentingViewController] dismissViewControllerAnimated:YES completion:self.dismissBlock];
}

- (IBAction)urgencyChanged:(id)sender
{
    self.urgencyLabel.text = [NSString stringWithFormat:@"Urgency: %.0f", self.urgencySlider.value];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
