
/* 	This code is original work of Albert Rovira (github user: krandalf75) 
	see : https://github.com/krandalf75/MySQL-Spatial-UDF
   	The code was last updated 8 years ago was only considering MySQL DB server
	due to the fact that the ORACLE did not buy MySQL at the time and MariaDB was not existed. 
	Therefore I have taken the liberty of hard-forking the code to make a clean start. 

	Albert Rovira has published this code under GPL so I follow the 
	same license for the code and all rights are belong to him. 
*/
#ifndef _GeometryUtils_
#define _GeometryUtils_
#define ACCEPT_USE_OF_DEPRECATED_PROJ_API_H // Ferhat Bingöl


#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <errno.h>


#include <proj_api.h>
#include <geos_c.h>


#ifndef PI
	#define PI       3.14159265358979323846
#endif



void gu_debug(const char *fmt, ...);

GEOSCoordSeq gu_reverseCoordSeq(const GEOSCoordSequence *seq);
GEOSCoordSeq gu_transformCoordSeq(const GEOSCoordSequence *seq,projPJ pj_src,projPJ pj_dst);
GEOSCoordSeq gu_substringCoordSeq(const GEOSCoordSequence *seq, double dstart, double dend);

GEOSGeom gu_reverseGeom(const GEOSGeom geom);
GEOSGeom gu_transformGeom(const GEOSGeom geom,projPJ pj_src,projPJ pj_dst);
GEOSGeom gu_substringLineGeom(const GEOSGeom geom,double start,double end);

#endif