//
//  BSDicUtils.m
//  MakeFriends
//
//  Created by kai on 2017/2/14.
//
//

#import "BSDicUtils.h"

id bs_safe_get(NSDictionary *dic, Class cls, id key)
{
    if (![dic isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    
    id val = [dic objectForKey:key];
    if ([val isKindOfClass:cls]) {
        return val;
    }
    return nil;
}

@implementation NSDictionary(BSDicUtils)

- (NSString *)bsGetString:(id)key
{
    return bs_safe_get(self, [NSString class], key);
}

- (NSNumber *)bsGetNumber:(id)key
{
    return bs_safe_get(self, [NSNumber class], key);
}

- (NSArray *)bsGetArray:(id)key
{
    return bs_safe_get(self, [NSArray class], key);
}

- (NSDictionary *)bsGetDic:(id)key
{
    return bs_safe_get(self, [NSDictionary class], key);
}

@end
