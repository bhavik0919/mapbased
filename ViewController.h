//
//  ViewController.h
//  mapbased
//
//  Created by Bhavik Panchal on 9/24/15.
//  Copyright © 2015 Bhavik Panchal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>


@property (weak, nonatomic) IBOutlet MKMapView *mapview;


@end

