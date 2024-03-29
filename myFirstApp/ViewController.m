//
//  ViewController.m
//  myFirstApp
//
//  Created by Mayank on 2/5/14.
//  Copyright (c) 2014 Mayank. All rights reserved.
//

#import "ViewController.h"
#import "GoogleMaps/GoogleMaps.h"

@interface ViewController ()

@end

@implementation ViewController
{
    GMSMapView *mapView_;
    __weak IBOutlet UITableView *Decal;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;
}
- (IBAction)touchOnDecalAction:(id)sender {
    Decal.allowsSelection = TRUE;
    }
- (IBAction)touchOnAnnouncementsAction:(id)sender {
}

- (IBAction)touchOnSettingsAction:(id)sender {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
