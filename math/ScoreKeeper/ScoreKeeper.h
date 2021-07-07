//
//  ScoreKeeper.h
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property int rightCount;
@property int wrongCount;
- (int) total;
- (NSString *) getResult;
@end

NS_ASSUME_NONNULL_END
