//
//  main.m
//  getthermal
//
//  Created by Douglas Floyd on 12/6/15.
//  Copyright © 2015 Secure Bear. All rights reserved.
//
// License is either GPL v. 2.0 or BSD.
//
// Grabs the thermal pressure state, returns it as an error code.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSProcessInfoThermalState state = [[NSProcessInfo processInfo] thermalState];
        
        if (state == NSProcessInfoThermalStateFair) {
            printf ("1\n");
            return 1;
            // Thermals are fair. Consider taking proactive measures to prevent higher thermals.
        } else if (state == NSProcessInfoThermalStateSerious) {
            printf ("2\n");
            return 2;
            // Thermals are highly elevated. Help the system by taking corrective action.
        } else if (state == NSProcessInfoThermalStateCritical) {
            printf ("3\n");
            return 3;
            // Thermals are seriously elevated. Help the system by taking immediate corrective action.
        } else {
            printf ("0\n");
            return 0;
            // Thermals are okay. Go about your business.
        };
        
    }
    
}
