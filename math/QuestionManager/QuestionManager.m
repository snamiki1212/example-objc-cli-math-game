//
//  QuestionManager.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "QuestionManager.h"

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

    // TODO: get total time and averate time from each item in list
    int totalTime = 10;
    int averageTime = 20;
    NSString *msg = [[NSString alloc]initWithFormat:@"total time: %ds, average time: %ds", totalTime, averageTime];
    return msg;
}
@end
