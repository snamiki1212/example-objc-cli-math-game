//
//  QuestionManager.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "QuestionManager.h"
#import "BaseQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *) timeOutput {
    NSString *msg = [[NSString alloc]initWithFormat:@"total time: %ds, average time: %ds", [self getTotaltime], [self getAverageTime]];
    return msg;
}

- (int) getTotaltime
{
    int totalTime = 0;
    for(BaseQuestion *question in self.questions) {
        totalTime += [question timeToAnswer];
    }
    return totalTime;
}

- (int) getAverageTime {
    NSUInteger count = [self.questions count];
    int averageTime = count == 0 ? 0 : [self getTotaltime] / count;
    return averageTime;
}
@end
