//
//  FastImageCacheViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "FastImageCacheViewController.h"
#import "FICDPhoto.h"
#import "FastlimageTableViewCell.h"
#import "Model.h"

static  NSString * getIdentifier(){
    return [FastlimageTableViewCell reuseIdentifier];
}

@interface FastImageCacheViewController ()
{
        NSArray *_photos;
        NSString *_imageFormatName;
        BOOL _usesImageTable;
}

@end

@implementation FastImageCacheViewController

-(instancetype)init
{
    if (self = [super init]) {
        _photos = [[NSArray alloc] init];
        [_tableView registerClass:[FastlimageTableViewCell class] forCellReuseIdentifier:getIdentifier()];
        _imageFormatName = FICDPhotoSquareImage32BitBGRAFormatName;
        _usesImageTable = 1;
    }return  self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
         _photos = [[NSArray alloc] init];
       [self getDate];
        _imageFormatName = FICDPhotoSquareImage32BitBGRAFormatName;
        _usesImageTable = 1;
    }return  self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [_tableView registerClass:[FastlimageTableViewCell class] forCellReuseIdentifier:getIdentifier()];
    
}

-(void)getDate{

    NSBundle *mainBundle = [NSBundle mainBundle];
    NSMutableArray *imageURLs = [[NSMutableArray alloc] init];
    NSArray * array = [Model models];
    [array enumerateObjectsUsingBlock:^(Model *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [imageURLs addObject:obj.img];
    }];
    
    if (imageURLs.count > 0) {
        NSMutableArray *photos = [[NSMutableArray alloc] init];
        for (NSURL *imageURL in imageURLs) {
            
            FICDPhoto *photo = [[FICDPhoto alloc] init];
            [photo setSourceImageURL:imageURL];
            [photos addObject:photo];
        }
        
        while ([photos count] < 50) {
            [photos addObjectsFromArray:photos];
            // Create lots of photos to_tapGestureRecognizerStateDidChange scroll through
        }
        _photos = photos;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  [FastlimageTableViewCell rowHeight];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger numberOfRow = ceilf([_photos count]/[FastlimageTableViewCell photosPerRow]);
    return numberOfRow;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * redu = [FastlimageTableViewCell reuseIdentifier];
    FastlimageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:redu];
    NSInteger photosPerRow = [FastlimageTableViewCell photosPerRow];
    [cell setImageFormatName:_imageFormatName];
    NSInteger startIndex = indexPath.row * photosPerRow;
    NSInteger count = MIN(photosPerRow, _photos.count - startIndex);
    NSArray * photos = [_photos subarrayWithRange:NSMakeRange(startIndex, count)];
    [cell setUsesImageTable:_usesImageTable];
    cell.photos = photos;
    
    return  cell;
    
}


@end
