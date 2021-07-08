//
//  QuestionFactory.h
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
- (Question *) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
