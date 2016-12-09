//
//  ViewController.h
//  Thread Demo NSoperation
//
//  Created by Student-002 on 17/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@property (strong, nonatomic) IBOutlet UIImageView *imageview;

- (IBAction)download:(id)sender;

@property (nonatomic,retain)NSOperationQueue *queue;


@end

