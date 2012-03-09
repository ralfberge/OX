//
//  MapViewAnnotation.m
//  OX
//
//  Created by Ralf Berge on 08.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation

@synthesize title, subtitle, coordinate;

- (id)initWithTitle:(NSString *)ttl andsubtitle:(NSString *)stl andCoordinate:(CLLocationCoordinate2D)c2d {
    
	title = ttl;
    subtitle = stl;
	coordinate = c2d;
	return self;
}

- (void)dealloc {
    
    [super dealloc];
}

@end