//
//  ViewController.m
//  BusinessApp
//
//  Created by André Almeida on 2022-10-21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button1.layer.cornerRadius = 5;
    self.button2.layer.cornerRadius = 5;
    self.button3.layer.cornerRadius = 5;
    self.button4.layer.cornerRadius = 5;
    self.button5.layer.cornerRadius = 5;
}


- (IBAction)contactUs:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
}

- (IBAction)aboutUs:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:1];
}

- (IBAction)portfolio:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:3];
}

- (IBAction)services:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:2];
}
@end
