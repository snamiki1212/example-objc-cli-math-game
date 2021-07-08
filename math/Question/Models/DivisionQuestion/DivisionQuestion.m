//
//  DivisionQuestion.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    self.question = [[NSString alloc] initWithFormat: @"%ld / %ld = ?", self.leftValue, self.rightValue];
    self.answer = self.rightValue == 0 ? 0 : self.leftValue / self.rightValue;
}
@end
