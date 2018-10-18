#include "sound_dist.h"
#include <stdio.h>
#include <math.h>

#define SRCPOW 4.0*M_PI // power of the source signal in Watts


static double dis12, // distance between mic 1 and mic 2
	dis13,				// distance between mic 1 and mic 3
	dis24,              // distance between mic 2 and mic 4
	dis34,              // distance between mic 3 and mic 4
	dis14,              // distance between mic 1 and mic 4
	dis23;              // distance between mic 2 and mic 3


void sound_dist_init(){

	double hypB = sqrt((pow(4, 2) + pow(4, 2)));
	dis12 = sqrt((pow(4,2) + pow(hypB,2))); // distance between mic 1 and mic 2
	dis13 = dis12;                          // distance between mic 1 and mic 3
	dis24 = dis12;                          // distance between mic 2 and mic 4
	dis34 = dis12;                          // distance between mic 3 and mic 4
	dis14 = 8.0;                            // distance between mic 1 and mic 4
	dis23 = 8.0;                            // distance between mic 2 and mic 3
}

//void sound_dist_calc() {
//    double intensity1 = 1.0, intensity2 = 1.0, intensity3 = 1.0, intensity4 = 1.0;
//	double S1 = sqrt(SRCPOW / (4 * M_PI*intensity1)); // distance from sound source
//	double S2 = sqrt(SRCPOW / (4 * M_PI*intensity2)); // distance from sound source
//	double S3 = sqrt(SRCPOW / (4 * M_PI*intensity3)); // distance from sound source
//	double S4 = sqrt(SRCPOW / (4 * M_PI*intensity4)); // distance from sound source
//	double angle1 = (pow(dis14, 2) + pow(S4, c) - pow(S1, 2)) / (2 * dis14*S4);
//	double angle2 = (pow(dis23, 2) + pow(S3, c) - pow(S2, 2)) / (2 * dis23*S3);
//	double angle3 = (pow(dis23, 2) + pow(S2, c) - pow(S3, 2)) / (2 * dis23*S2);
//	double angle4 = (pow(dis14, 2) + pow(S1, c) - pow(S4, 2)) / (2 * dis14*S1);
//	printf("Distance between source and mic 1: %4.3lf meters\nDistance between source and mic 2: %4.3lf meters\nDistance between source and mic 3: %4.3lf meters\nDistance between source and mic 4: %4.3lf meters\n\n", S1, S2, S3, S4);
//	printf("Angle to the source from mic 1: %4.3lf degrees\nAngle to the source from mic 2: %4.3lf degrees\nAngle to the source from mic 3: %4.3lf degrees\nAngle to the source from mic 4: %4.3lf degrees\n\n", angle1, angle2, angle3, angle4);
//}