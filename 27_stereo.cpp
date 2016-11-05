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
 
const char *windowDisparity = "Disparity";
 
void readme();
 
int main( int argc, char** argv )
{
  //if( argc != 3 )
  //{ readme(); return -1; }

 //-- 1. Read the images
   Mat imgLeft = imread( "junkl.jpg", IMREAD_GRAYSCALE );
   Mat imgRight = imread( "junkr.jpg", IMREAD_GRAYSCALE );
 //-- And create the image in which we will save our disparities
   Mat imgDisparity16S = Mat( imgLeft.rows, imgLeft.cols, CV_16S );
   Mat imgDisparity8U = Mat( imgLeft.rows, imgLeft.cols, CV_8UC1 );
 
   if( imgLeft.empty() || imgRight.empty() )
   { std::cout<< " --(!) Error reading images " << std::endl; return -1; }
 
   //-- 2. Call the constructor for StereoBM
   int ndisparities = 16*5;   
   int SADWindowSize = 21; 
   Ptr<StereoBM> sbm = StereoBM::create( ndisparities, SADWindowSize );
 
   //-- 3. Calculate the disparity image
   sbm->compute( imgLeft, imgRight, imgDisparity16S );
 
   //-- Check its extreme values
   double minVal; double maxVal;
 
   minMaxLoc( imgDisparity16S, &minVal, &maxVal );
 
   printf("Min disp: %f Max value: %f \n", minVal, maxVal);
 
   //-- 4. Display it as a CV_8UC1 image
   imgDisparity16S.convertTo( imgDisparity8U, CV_8UC1, 255/(maxVal - minVal));
 
	Mat erosion_dst,dilation_dst;

	//Dilation and erosion
	erode( imgDisparity8U, erosion_dst, 10 );
	dilate( imgDisparity8U, dilation_dst, 10 );

   namedWindow( windowDisparity, WINDOW_NORMAL );
	namedWindow( "ERODE", WINDOW_NORMAL );
	namedWindow( "DILATE", WINDOW_NORMAL );
   imshow( windowDisparity, imgDisparity8U );
	imshow( "ERODE", erosion_dst );
	imshow( "DILATE", dilation_dst );
 
   //-- 5. Save the image
   imwrite("SBM_sample.png", imgDisparity16S);
 
   waitKey(0);
 
   return 0;
}
