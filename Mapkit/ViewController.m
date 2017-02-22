//
//  ViewController.m
//  Mapkit
//
//  Created by Nagam Pawan on 9/24/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mapView.showsUserLocation = YES;
    self.mapView.delegate = self;
    [self startLocationUpdate];
    CLLocationCoordinate2D annotationCord;
    annotationCord.latitude = 16.4431512;
    annotationCord.longitude = 80.6219417;
    MKPointAnnotation *annotationpoint = [[MKPointAnnotation alloc]init];
    annotationpoint.coordinate = annotationCord;
    annotationpoint.title = @"KLUniversity";
    annotationpoint.subtitle = @"Guntur";
    [_mapView addAnnotation:annotationpoint];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)startLocationUpdate{

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeMap:(id)sender {
    if (_mapView.mapType == MKMapTypeStandard) {
        _mapView.mapType = MKMapTypeSatellite;
    }
        else{
        _mapView.mapType = MKMapTypeStandard;
    }
}

- (IBAction)didClickStepper:(UIStepper *)sender{
    int value = sender.value;
        if (value > oldValue) {
           [self zoomin];
        }
        else{
            [self zoomOut];
        }
        oldValue = value;
}
-(IBAction)zoomin{
    MKCoordinateSpan span;
    span.latitudeDelta =_mapView.region.span.latitudeDelta/2;
    span.longitudeDelta =_mapView.region.span.longitudeDelta/2;
    MKCoordinateRegion region;
    region.span = span;
    region.center = _mapView.region.center;
    [self.mapView setRegion:region animated:YES];
    
}
-(IBAction)zoomOut{
    MKCoordinateSpan span;
    span.latitudeDelta = _mapView.region.span.latitudeDelta*2;
    span.longitudeDelta = _mapView.region.span.longitudeDelta*2;
    MKCoordinateRegion region;
    region.span = span;
    region.center = _mapView.region.center;
    [self.mapView setRegion:region animated:YES];
    

}
@end
