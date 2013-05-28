//
//  ViewController.m
//  IOS-Umilenie
//
//  Created by admin on 23.05.13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _cats = [NSMutableArray array];
    UIImage *cat1Image = [UIImage imageNamed:@"cat1.jpg"];
    UIImage *cat2Image = [UIImage imageNamed:@"cat2.jpg"];
    UIImage *cat3Image = [UIImage imageNamed:@"cat3.jpg"];
    UIImage *cat4Image = [UIImage imageNamed:@"cat4.jpg"];
    UIImage *cat5Image = [UIImage imageNamed:@"cat5.jpeg"];
    UIImage *cat6Image = [UIImage imageNamed:@"cat6.jpg"];
    
    [_cats addObject:cat1Image];
    [_cats addObject:cat2Image];
    [_cats addObject:cat3Image];
    [_cats addObject:cat4Image];
    [_cats addObject:cat5Image];
    [_cats addObject:cat6Image];
    
    self.imageView.image = [_cats objectAtIndex:_catIndex];
    
    UIImage *backgroundImage = [UIImage imageNamed:@"fn.png"];
    UIColor *backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    self.view.backgroundColor = backgroundColor;
    
    UIImage *buttonNormalImage = [UIImage imageNamed:@"Ubtn.png"];
    UIImage *buttonStretchableImage = [buttonNormalImage stretchableImageWithLeftCapWidth:14 topCapHeight:0];
    UIImage *buttonHighligthedImage = [UIImage imageNamed:@"Pbtn.png"];
    UIImage *buttonHighligthedStretchableImage = [buttonHighligthedImage stretchableImageWithLeftCapWidth:14 topCapHeight:0];
    
    [self.moarButton setBackgroundImage:buttonStretchableImage forState:UIControlStateNormal];
    [self.moarButton setBackgroundImage:buttonHighligthedStretchableImage forState:UIControlStateHighlighted];
    
    //boxImageView
    UIImage *boxImage = [UIImage imageNamed:@"backS.png"];
    UIImage *boxResizableImage = [boxImage resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15)];
    self.boxImageView.image = boxResizableImage;
    
}

- (IBAction)moarButtonAction:(id)sender {
    _catIndex++;
    if (_catIndex == [_cats count]) {
        _catIndex = 0;
    }
    self.imageView.image = [_cats objectAtIndex:_catIndex];
}
@end
