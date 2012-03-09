//
//  MapViewAnnotation.m
//  OX
//
//  Created by Ralf Berge on 08.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation

@synthesize title, coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d {
    
	title = ttl;
	coordinate = c2d;
	return self;
}

- (void)dealloc {
    
    [super dealloc];
}

@end