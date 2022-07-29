//
//  Passenger.h
//  College Demo
//
//  Created by csy on 2022/7/26.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic, copy) NSString *passengerName;    //乘客姓名
@property (nonatomic, copy) Address *departurePlace;    //出发地
@property (nonatomic, copy) Address *destinationPlace;  //目的地
@property (nonatomic, assign) NSDate *startTime;        //发车时间
@property (nonatomic, assign) NSDate *arriveTime;       //到达时间
@property (nonatomic, copy) NSNumber *trainNumber;      //车次
@property (nonatomic, copy) NSNumber *seatNumber;       //座位号

-(instancetype)initOrder:(NSString *) passengerName 
departurePlace:(Address *) departurePlace 
destinationPlace:(Address *) destinationPlace 
startTime:(nonnull NSDate *)startTime 
arriveTime:(nonnull NSDate *) arriveTime 
trainNumber:(NSNumber *)trainNumber 
seatNumber:(NSNumber *) seatNumber;

@end

@interface Passenger : Person

@property (nonatomic, assign) BOOL ifAdult;                     // 是否年满 18 岁
@property (nonatomic, assign) NSMutableArray *historyOrder;     // 历史订单 （数组）
@property (nonatomic, assign) NSMutableArray *noTravalOrder; // 未出行订单 （数组）

// Function 方法
-(void) bookTicket:(Orders *) order; // 去订票
-(void) checkTicket:(Orders *)order; // 去检票

@end

NS_ASSUME_NONNULL_END