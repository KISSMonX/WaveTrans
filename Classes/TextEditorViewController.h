//
//  TextEditorViewController.h
//  WaveTrans
//
//  Created by Bruce on 13-11-26.
//
//

#import <UIKit/UIKit.h>

@protocol PostWaveTransMetadataDelegate;

@interface TextEditorViewController : UIViewController

@property (nonatomic, assign)   id<PostWaveTransMetadataDelegate> postWaveTransMetadataDelegate;

@end