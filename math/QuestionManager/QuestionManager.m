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

    NSUInteger count = [self.questions count];
    
    int totalTime = 0;
    for(BaseQuestion *question in self.questions) {
        totalTime += [question timeToAnswer];
    }
    
    int averageTime = count == 0 ? 0 : totalTime / count;
    NSString *msg = [[NSString alloc]initWithFormat:@"total time: %ds, average time: %ds", totalTime, averageTime];
    return msg;
}
@end
