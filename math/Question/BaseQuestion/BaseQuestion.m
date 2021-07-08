//
//  AdditionQuestion.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "BaseQuestion.h"

@implementation BaseQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.rightValue = arc4random_uniform(100);
        self.leftValue = arc4random_uniform(100);
        self.startTime = [NSDate date];
    }
    return self;
}

- (NSInteger) answer {
    self.endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) timeToAnswer {
    return [self.startTime timeIntervalSinceDate:self.endTime];
}

- (void) generateQuestion {
    return;
}
@end
