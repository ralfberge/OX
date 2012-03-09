//
//  OXViewController.m
//  OX
//
//  Created by Ralf Berge on 08.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "OXViewController.h"
#import "MapViewAnnotation.h"

@implementation OXViewController
@synthesize mapView;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [mapView setMapType:MKMapTypeStandard];
    [mapView setZoomEnabled:YES];
    [mapView setScrollEnabled:YES];
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region.center.latitude = 51.538546;
    region.center.longitude = 7.416844;
    region.span.longitudeDelta = 0.10f;
    region.span.latitudeDelta = 0.10f;
    [mapView setRegion:region animated:YES]; 
    
    
    CLLocationCoordinate2D location;
	location.latitude = (double) 51.538546;
	location.longitude = (double) 7.416844;
    
    MapViewAnnotation *newAnnotation = [[MapViewAnnotation alloc] initWithTitle:@"Buckingham Palace" andCoordinate:location];
	[self.mapView addAnnotation:newAnnotation];
    
}



- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
	MKAnnotationView *annotationView = [views objectAtIndex:0];
	id <MKAnnotation> mp = [annotationView annotation];
	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 1500, 1500);
	[mv setRegion:region animated:YES];
	[mv selectAnnotation:mp animated:YES];
}




- (void)viewDidUnload
{
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (void)dealloc {
    [mapView release];
    [super dealloc];
}
@end
