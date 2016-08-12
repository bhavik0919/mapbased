//
//  ViewController.m
//  mapbased
//
//  Created by Bhavik Panchal on 9/24/15.
//  Copyright © 2015 Bhavik Panchal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mapview.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    //MKMapPoint is a coordinate that has been projected for use on the 2D MaP Location
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    
    [self.mapview setRegion:[self.mapview regionThatFits:region] animated:YES];
    
    // Add an annotation view the mark
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    
    point.coordinate = userLocation.coordinate;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here!!!";
    
    [self.mapview addAnnotation:point];
}
@end
