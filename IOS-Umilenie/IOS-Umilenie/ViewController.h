//
//  ViewController.h
//  IOS-Umilenie
//
//  Created by admin on 23.05.13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSMutableArray *_cats;
    NSInteger _catIndex;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *moarButton;
@property (weak, nonatomic) IBOutlet UIImageView *boxImageView;
- (IBAction)moarButtonAction:(id)sender;

@end
