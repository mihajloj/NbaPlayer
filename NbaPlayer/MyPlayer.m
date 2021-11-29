//
//  MyPlayer.m
//  NbaPlayer
//
//  Created by Mihajlo Jezdic on 28.10.21..
//

#import "MyPlayer.h"
#import <WebKit/WebKit.h>

@interface MyPlayer ()
@property WKWebView* webView;
@end

@implementation MyPlayer

-(id)init{
    self = [self initWithInteger:5000];
   
    return self;
}

-(id)initWithInteger: (int) initialScore{
    self = [super init];
    if (self) {
        _score = initialScore * 2;
    }
    return self;
}

- (void)displayWebview {
    WKWebViewConfiguration* configuration = [[WKWebViewConfiguration alloc] init];
    UIViewController* base = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    UIViewController* topViewController = [self topViewController:base];
            
    if(topViewController) {
        self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, 500, 500) configuration:configuration];
        [[topViewController view] addSubview:self.webView];
        NSURLRequest* request = [[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"https://www.google.com"]];
        [self.webView loadRequest:request];
    }
}


-(UIViewController* ) topViewController: (UIViewController* ) base {
    if ([base isKindOfClass:UINavigationController.class]) {
        UINavigationController* nav  = (UINavigationController*) base;
        return [self topViewController:[nav visibleViewController]];
    }
    if ([base isKindOfClass:UITabBarController.class]) {
        UITabBarController* tab = (UITabBarController*) base;
        UIViewController* selected = [tab selectedViewController];
        if (selected) {
            return [self topViewController:selected];
        }
    }
    UIViewController* presented = [base presentedViewController];
    if (presented) {
        return [self topViewController:presented];
    }
    return base;
}

@end
