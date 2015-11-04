//
//  ViewController.m
//  campFire
//
//  Created by Trung Bao on 11/4/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView * fire;
}
@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    self.view.backgroundColor=[UIColor blackColor];
    self.edgesForExtendedLayout= UIRectEdgeNone;
    [self burnfire];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) burnfire {
    fire=[[UIImageView alloc] initWithFrame:self.view.bounds];
    NSMutableArray *images= [[NSMutableArray alloc] init];
    for (int i=1; i<18; i++) {
        NSString *filename;
        if (i<10) {
            filename=[NSString stringWithFormat:@"campFire0%d.gif",i];
        }else {
            filename=[NSString stringWithFormat:@"campFire%d.gif",i];
        }
        [images addObject:[UIImage imageNamed: filename]];
    }
    fire.animationImages=images;
    fire.animationDuration=1;
    fire.animationRepeatCount=0;
    [self.view addSubview:fire];
    [fire startAnimating];
}
@end
