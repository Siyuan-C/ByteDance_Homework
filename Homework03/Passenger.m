//
//  Passenger.m
//  College Demo
//
//  Created by csy on 2022/7/24.
//

#import "Passenger.h"

@implementation Orders

-(instancetype)initOrder:(NSString *) passengerName 
departurePlace:(Address *) departurePlace 
destinationPlace:(Address *) destinationPlace 
startTime:(nonnull NSDate *)startTime 
arriveTime:(nonnull NSDate *) arriveTime 
trainNumber:(NSNumber *)trainNumber 
seatNumber:(NSNumber *) seatNumber;{
    if(self = [super init]){
        [self createOrder:passengerName departurePlace:departurePlace destinationPlace:destinationPlace startTime:startTime arriveTime:arriveTime trainNumber:trainNumber seatNumber:seatNumber];
    }
    return self;
}

-(void)createOrder:(NSString *) passengerName 
departurePlace:(Address *) departurePlace 
destinationPlace:(Address *) destinationPlace 
startTime:(nonnull NSDate *)startTime 
arriveTime:(nonnull NSDate *) arriveTime 
trainNumber:(NSNumber *)trainNumber 
seatNumber:(NSNumber *) seatNumber;{
    self.passengerName=passengerName;
    self.departurePlace=departurePlace;
    self.destinationPlace=destinationPlace;
    self.startTime=startTime;
    self.arriveTime=arriveTime;
    self.trainNumber=trainNumber;
    self.seatNumber=seatNumber;
}

@end

@implementation Passenger

- (void) bookTicket:(Orders *)order{
    [self.noTravalOrder addObject:order];
}

- (void) checkTicket:(Orders *)order{
    
    if(_noTravalOrder != nil && ![_noTravalOrderr isKindOfClass:[NSNull class]] && _noTravalOrder.count != 0){
        [self.noTravalOrder removeObject:order];
    }else{
        NSLog(@"error");
    }
    [self.historyOrder addObject:order];
}

@end