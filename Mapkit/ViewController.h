//
//  ViewController.h
//  Mapkit
//
//  Created by Nagam Pawan on 9/24/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>{
    int oldValue;
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)changeMap:(id)sender;



@end

