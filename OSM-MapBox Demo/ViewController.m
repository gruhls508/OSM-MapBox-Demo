//
//  ViewController.m
//  OSM-MapBox Demo
//
//  Created by Glen Ruhl on 3/21/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "ViewController.h"
@import Mapbox;


@interface ViewController ()
@property (strong, nonatomic) IBOutlet MGLMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MGLPointAnnotation *point = [[MGLPointAnnotation alloc] init];
    point.coordinate = CLLocationCoordinate2DMake(45.52258, -122.6732);
    point.title = @"Voodoo Doughnut";
    point.subtitle = @"22 SW 3rd Avenue Portland Oregon, U.S.A.";

    [self.mapView addAnnotation:point];
}

- (BOOL)mapView:(MGLMapView *)mapView annotationCanShowCallout:(id <MGLAnnotation>)annotation {
    // Always try to show a callout when an annotation is tapped.
    return YES;
}

@end
