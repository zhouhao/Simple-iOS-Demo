//
//  MapViewController.m
//  View demo
//
//  Created by Hao Zhou on 4/4/16.
//  Copyright © 2016 Hao Zhou. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController ()

@property (nonatomic) MKMapView *mapView;
@end

@implementation MapViewController

- (void)loadView {
    self.mapView = [MKMapView new];
    self.view = self.mapView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"MapViewController loaded its view.");
};


@end
