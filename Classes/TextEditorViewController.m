//
//  TextEditorViewController.m
//  WaveTrans
//
//  Created by Bruce on 13-11-26.
//
//

#import "TextEditorViewController.h"
#import "DDHTextView.h"

@interface TextEditorViewController ()

@end

@implementation TextEditorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    
    UIView *contentView = [[UIView alloc] initWithFrame:frame];
    
    DDHTextView *textView = [[[DDHTextView alloc] init] autorelease];
    textView.translatesAutoresizingMaskIntoConstraints = NO;
    textView.backgroundColor = [UIColor colorWithWhite:0.95f alpha:1.0f];
    textView.text = @"欢迎使用声波传输";
    [contentView addSubview:textView];
    
    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(textView);
    [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[textView]|" options:0 metrics:nil views:viewsDictionary]];
    [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[textView(200)]" options:0 metrics:nil views:viewsDictionary]];
    
    
    self.view = contentView;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
