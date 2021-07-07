//
//  ScoreKeeper.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.rightCount = 0;
        self.wrongCount = 0;
    }
    return self;
}

- (NSString *) getResult
{
    if([self total] == 0) return 0;
    float correctRate = ((float) self.rightCount / [self total] * 100);
    return [[NSString alloc] initWithFormat:@"Score: %d right, %d wrong ---- %f%%", self.rightCount, self.wrongCount, correctRate];
}

- (int) total
{
    return self.rightCount + self.wrongCount;
}
@end
