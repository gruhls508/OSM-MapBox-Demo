//
//  ViewController.m
//  OSM-MapBox Demo
//
//  Created by Glen Ruhl on 3/21/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "ViewController.h"
#import "PointMaker.h"
@import Mapbox;


@interface ViewController ()
@property (strong, nonatomic) IBOutlet MGLMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    /*  
        Now I need some way of generating a bunch of these.
        Will start by making subclass "pointMaker" that will create an array
        of 'point' objects and pass that array to ViewController to be used
        on _mapView. 
    */

      NSArray *pointArray = [PointMaker pointArray];
      for (MGLPointAnnotation *point in pointArray) {

          [self.mapView addAnnotation:point];
      }

}

- (BOOL)mapView:(MGLMapView *)mapView annotationCanShowCallout:(id <MGLAnnotation>)annotation {
    // Always try to show a callout when an annotation is tapped.
    return YES;
}

@end
