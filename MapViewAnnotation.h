//
//  MapViewAnnotation.h
//  OX
//
//  Created by Ralf Berge on 08.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface MapViewAnnotation : NSObject <MKAnnotation> {
    
	NSString *title;
	CLLocationCoordinate2D coordinate;
    
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d;

@end