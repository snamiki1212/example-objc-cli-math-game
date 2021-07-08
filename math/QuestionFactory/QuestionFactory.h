//
//  QuestionFactory.h
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>
#import "BaseQuestion.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
- (BaseQuestion *) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
