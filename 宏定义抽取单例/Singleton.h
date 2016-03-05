//
//  Singleton.h
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//


// 单例宏抽取

//.h部分
#define interfaceSingleton(name) +(instancetype)share##name;//意思是用##name会被name代替

//.m部分
//自动判断ARC还是MRC
#if __has_feature(objc_arc)
// ARC
#define implementation(name) \
+(instancetype)share##name{ \
name *instance = [[name alloc] init]; \
return instance; \
} \
static  name *_instance = nil; \
+(instancetype)allocWithZone:(struct _NSZone *)zone{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[super allocWithZone:zone] init]; \
}); \
return _instance; \
}\
- (id)copyWithZone:(nullable NSZone *)zone{ \
return _instance; \
} \
-(id)mutableCopyWithZone:(NSZone *)zone{ \
return _instance; \
}

#else
// MRC
#define implementation(name) \
+(instancetype)share##name{ \
name *instance = [[name alloc] init]; \
return instance; \
} \
static  name *_instance = nil; \
+(instancetype)allocWithZone:(struct _NSZone *)zone{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[super allocWithZone:zone] init]; \
}); \
return _instance; \
}\
- (id)copyWithZone:(nullable NSZone *)zone{ \
return _instance; \
} \
-(id)mutableCopyWithZone:(NSZone *)zone{ \
return _instance; \
} \
-(oneway void)release{ \
} \
-(instancetype)retain{ \
return _instance; \
} \
-(NSUInteger)retainCount{ \
return MAXFLOAT; \
}
#endif



