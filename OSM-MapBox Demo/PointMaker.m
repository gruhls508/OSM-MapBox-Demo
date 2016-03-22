//
//  PointMaker.m
//  OSM-MapBox Demo
//
//  Created by Glen Ruhl on 3/21/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "PointMaker.h"
@import Mapbox;

@implementation PointMaker


+ (NSArray *)pointArray {
    NSArray *pointArray = @[];
    int pointCount = 6;


    NSMutableArray *tempArray = @[].mutableCopy;

    for (int i = 0; i <= pointCount; i ++) {

        //  Method for generating point. Method will take 'int'
        //  param and return MGLPointAnnotation object.
        MGLPointAnnotation *point = [PointMaker pointForIndex:i];

        if (point)
            [tempArray addObject:point];

    }

    pointArray = [NSArray arrayWithArray:tempArray];

    return pointArray;
}

+ (MGLPointAnnotation *)pointForIndex:(int)index {
    MGLPointAnnotation *point = [MGLPointAnnotation new];

    switch (index) {
        case 0:
            //  City Hall
            point.coordinate = CLLocationCoordinate2DMake(39.9526240, -75.1634620);
            point.title = @"Philadelphia City Hall";
            point.subtitle = @"1401 John F Kennedy Blvd, Philadelphia, PA 19107, USA";
            break;
        case 1:
            point.coordinate = CLLocationCoordinate2DMake(39.9532280, -75.1589550);
            point.title = @"Reading Terminal Market";
            point.subtitle = @"51 N 12th Street Philadelphia, Pennsylvania USA";
            break;
        default:
            nil;
            break;
    }
    return point;
}


@end
