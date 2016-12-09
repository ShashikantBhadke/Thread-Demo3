//
//  ViewController.m
//  Thread Demo NSoperation
//
//  Created by Student-002 on 17/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _queue=[[NSOperationQueue alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {
    
    NSString *imagepath=@"http://i.amz.mshcdn.com/Pp-86XPbUlVRkvX2sj1JNKduDRc=/fit-in/1200x9600/https%3A%2F%2Fblueprint-api-production.s3.amazonaws.com%2Fuploads%2Fcard%2Fimage%2F176275%2FGettyImages-587925244.jpg";
    
    [_indicator startAnimating];
    
    NSBlockOperation *op1=[NSBlockOperation blockOperationWithBlock:^{
        NSURL *url=[NSURL URLWithString:imagepath];
        NSData *data=[NSData dataWithContentsOfURL:url];
        
        UIImage *img=[UIImage imageWithData:data];
        
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            _imageview.image=img;
            [_indicator stopAnimating];
        }];
        
        
    }];
    [_queue addOperation:op1];
    
    
    
}
@end
