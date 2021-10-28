//
//  MyPlayer.m
//  NbaPlayer
//
//  Created by Mihajlo Jezdic on 28.10.21..
//

#import "MyPlayer.h"

@implementation MyPlayer

-(id)init{
    self = [self initWithInteger:5000];
   
    return self;
}

-(id)initWithInteger: (int) initialScore{
    self = [super init];
    if (self) {
        _score = initialScore;
    }
    return self;
}

@end
