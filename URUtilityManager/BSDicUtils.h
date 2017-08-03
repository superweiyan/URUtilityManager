//
//  BSDicUtils.h
//  MakeFriends
//
//  Created by kai on 2017/2/14.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary(BSDicUtils)

- (NSString *)bsGetString:(id)key;
- (NSNumber *)bsGetNumber:(id)key;
- (NSArray *)bsGetArray:(id)key;
- (NSDictionary *)bsGetDic:(id)key;

@end
