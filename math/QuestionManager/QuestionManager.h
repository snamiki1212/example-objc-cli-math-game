//
//  QuestionManager.h
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property NSMutableArray *questions;
- (instancetype)init;
- (NSString *) timeOutput;
@end

NS_ASSUME_NONNULL_END
