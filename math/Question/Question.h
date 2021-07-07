//
//  AdditionQuestion.h
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property NSString *question;
@property (nonatomic) NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;
- (NSInteger) answer;
- (NSTimeInterval) answerTime;
@end

NS_ASSUME_NONNULL_END
