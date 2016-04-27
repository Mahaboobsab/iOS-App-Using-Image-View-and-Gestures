//
//  ViewController.m
//  Dr.ApjAbdulKalamQuotes
//
//  Created by test on 15/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    int swipeCount;
}

@synthesize imageNames;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imageNames = [[NSMutableArray alloc]initWithObjects:@"Apj2",@"Apj3",@"Apj4" ,@"Apj5",@"Apj6",@"Apj7" ,@"Apj8" ,@"Apj9" ,@"Apj10",@"Apj11",@"Apj12",@"Apj13",@"Apj14",@"Apj15",@"Apj16",@"Apj17",@"Apj18",@"Apj19",  nil];
    
    self.ImageViewField.layer.cornerRadius = self.ImageViewField.frame.size.width / 2;
    self.ImageViewField.layer.cornerRadius = self.ImageViewField.frame.size.height / 2;
    self.ImageViewField.clipsToBounds = YES;
    
    self.ImageViewField.layer.borderWidth = 2.0f;
    self.ImageViewField.layer.borderColor = [UIColor redColor].CGColor;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SwipeLeft:(id)sender {
   
    NSLog(@"Inside Swipe left...");
    
    
    if(swipeCount < imageNames.count){
        self.ImageViewField.image = [UIImage imageNamed:[imageNames objectAtIndex:swipeCount]];
    
    }
    
    else{
    
        self.ImageViewField.image = [UIImage imageNamed:@"APj1"];
        swipeCount = 0;
    }
    
    swipeCount++;
}
- (IBAction)SwipeRight:(id)sender {
    
     NSLog(@"Inside Swipe Right...");
     // swipeCount--;
    
    if(swipeCount < imageNames.count){
        self.ImageViewField.image = [UIImage imageNamed:[imageNames objectAtIndex:swipeCount]];
        
    }
    else{
        
        self.ImageViewField.image = [UIImage imageNamed:@"APj1"];
        swipeCount = 0;
    }
    swipeCount++;
}

- (IBAction)nextButton:(id)sender {
    
    NSLog(@"Inside Swipe left...");
    
    
    if(swipeCount < imageNames.count){
        self.ImageViewField.image = [UIImage imageNamed:[imageNames objectAtIndex:swipeCount]];
        
    }
    
    else{
        
        self.ImageViewField.image = [UIImage imageNamed:@"APj1"];
        swipeCount = 0;
    }
    
    swipeCount++;
    
    
    
}

- (IBAction)prevButton:(id)sender {
    
    
    if(swipeCount < imageNames.count){
        self.ImageViewField.image = [UIImage imageNamed:[imageNames objectAtIndex:swipeCount]];
        
    }
    else{
        
        self.ImageViewField.image = [UIImage imageNamed:@"APj1"];
        swipeCount = 0;
    }
    swipeCount++;

}

@end
