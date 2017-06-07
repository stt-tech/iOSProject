//
//  FastlimageTableViewCell.m
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "FastlimageTableViewCell.h"
#import "FICDPhoto.h"
#import "FICImageCache.h"

#import "UIImageView+WebCache.h"


@interface FastlimageTableViewCell ()
{
    NSArray *_imageViews;
    
}

@end

@implementation FastlimageTableViewCell

@synthesize imageFormatName = _imageFormatName;
@synthesize usesImageTable = _usesImageTable;

- (void)awakeFromNib {
    [super awakeFromNib];
}

+(NSString *)reuseIdentifier
{
    static NSString * __reuseIdentifier = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        __reuseIdentifier = NSStringFromClass([FastlimageTableViewCell class]);
    });
    return  __reuseIdentifier;
}

+(NSInteger)photosPerRow
{
    
    NSInteger photosPerRow = ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) ? 9 : 4;
    return  photosPerRow;
}
+(CGFloat)outerPadding
{
    
    CGFloat outerPadding = ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) ? 10 : 4;
    return outerPadding;
}
+(CGFloat)rowHeight
{
    
    CGFloat rowHeight = ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) ? 84 : 79;
    return rowHeight;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _imageViews = [[NSArray alloc] init];
        NSInteger photoPerRow = [[self class] photosPerRow];
        NSMutableArray * imageViews = [[NSMutableArray alloc] initWithCapacity:photoPerRow];
        for (int i=0; i<photoPerRow; i++) {
            UIImageView * imageView = [[UIImageView alloc] init];
            [self.contentView addSubview:imageView];
            [imageViews addObject:imageView];
            CGFloat innerPadding = ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) ? 9 : 4;
            CGFloat outerPadding = [[self class] outerPadding];
            
            imageView.frame = CGRectMake(innerPadding + FICDPhotoSquareImageSize.width * i, innerPadding, FICDPhotoSquareImageSize.width , FICDPhotoSquareImageSize.height);
            
            imageView.contentMode = UIViewContentModeScaleToFill;
        }
        _imageViews = [imageViews copy];
        
    } return  self;
}

-(void)setPhotos:(NSArray *)photos
{
    _photos = photos;
    for (int i=0; i<_imageViews.count; i++) {
        UIImageView * imageView = [_imageViews objectAtIndex:i];
        if (i<_photos.count) {
            FICDPhoto * phot = [_photos objectAtIndex:i];
//            if (_usesImageTable) {
//                [[FICImageCache sharedImageCache] retrieveImageForEntity:phot withFormatName:_imageFormatName completionBlock:^(id<FICEntity> entity, NSString *formatName, UIImage *image) {
//                    
//                }];
//            }else{
//                  [imageView setImage:[phot sourceImage]];
//            }
            
//            [imageView sd_setImageWithURL:phot.sourceImageURL];
            
//            [imageView setImage:[phot thumbnailImage]];
        }else{
        
            [imageView setImage:nil];
        }
        
    }
}



@end
