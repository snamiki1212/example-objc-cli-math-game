//
//  SubtractionQuestion.h
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface SubtractionQuestion : Question
@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
- (NSTimeInterval)timeToAnswer;
- (void)generateQuestion;
@end

NS_ASSUME_NONNULL_END
