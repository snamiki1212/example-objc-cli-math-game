//
//  AdditionQuestion.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        //
        NSInteger elem1 = arc4random_uniform(100);
        NSInteger elem2 = arc4random_uniform(100);
        self.question = [[NSString alloc] initWithFormat: @"%ld + %ld = ?", (long)elem1, elem2];
        self.answer = elem1 + elem2;
    }
    return self;
}
@end
