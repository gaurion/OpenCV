#include <stdio.h>
#include <iostream>
#include "opencv2/calib3d/calib3d.hpp"
#include "opencv2/core/core.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"

using namespace cv;
using namespace std;

int main( int argc, char** argv )
{
Mat src;

src=imread("test.jpg");

int element;
cout<<"enter the value for element";
cin>>element;

Mat erosion_dst,dilation_dst;

//Dilation and erosion
	erode( src, erosion_dst, element );
	dilate( src, dilation_dst, element );

   namedWindow( "ORIGINAL", WINDOW_NORMAL );
	namedWindow( "ERODE", WINDOW_NORMAL );
	namedWindow( "DILATE", WINDOW_NORMAL );
   imshow( "ORIGINAL", src );
	imshow( "ERODE", erosion_dst );
	imshow( "DILATE", dilation_dst );

waitKey(0);
return 0;

}

