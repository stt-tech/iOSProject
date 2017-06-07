//
//  FastImageCacheViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "FastImageCacheViewController.h"
#import "FICDPhoto.h"

@interface FastImageCacheViewController ()

@end

@implementation FastImageCacheViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
}

-(void)getDate{

    NSBundle *mainBundle = [NSBundle mainBundle];
    NSArray *imageURLs = [mainBundle URLsForResourcesWithExtension:@"jpg" subdirectory:@"Demo Images"];
    if (imageURLs.count > 0) {
        NSMutableArray *photos = [[NSMutableArray alloc] init];
        for (NSURL *imageURL in imageURLs) {
            FICDPhoto *photo = [[FICDPhoto alloc] init];
            [photo setSourceImageURL:imageURL];
            [photos addObject:photo];
        }
        
        while ([photos count] < 5000) {
            [photos addObjectsFromArray:photos]; // Create lots of photos to scroll through
        }
    }
}

@end
