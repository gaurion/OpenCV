#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include <iostream>
#include <stdlib.h>
using namespace std;
using namespace cv;

//Contour
int thresh = 100;
int max_thresh = 255;
RNG rng(12345);

/// Function header
void thresh_callback(int, void* );


//Threshold
Mat frame, frame_threshold;
void on_low_r_thresh_trackbar(int, void *);
void on_high_r_thresh_trackbar(int, void *);
void on_low_g_thresh_trackbar(int, void *);
void on_high_g_thresh_trackbar(int, void *);
void on_low_b_thresh_trackbar(int, void *);
void on_high_b_thresh_trackbar(int, void *);
int low_r=167, low_g=178, low_b=205;
int high_r=206, high_g=237, high_b=255;



int main()
{
    
    namedWindow("Original", WINDOW_NORMAL);
    namedWindow("Object Detection", WINDOW_NORMAL);
    //-- Trackbars to set thresholds for RGB values
    createTrackbar("Low R","Object Detection", &low_r, 255, on_low_r_thresh_trackbar);
    createTrackbar("High R","Object Detection", &high_r, 255, on_high_r_thresh_trackbar);
    createTrackbar("Low G","Object Detection", &low_g, 255, on_low_g_thresh_trackbar);
    createTrackbar("High G","Object Detection", &high_g, 255, on_high_g_thresh_trackbar);
    createTrackbar("Low B","Object Detection", &low_b, 255, on_low_b_thresh_trackbar);
    createTrackbar("High B","Object Detection", &high_b, 255, on_high_b_thresh_trackbar);
    while(char(waitKey(1))!='q'){
        frame=imread("pipel.jpg");
        if(frame.empty())
            break;
        //-- Detect the object based on RGB Range Values
        inRange(frame,Scalar(low_b,low_g,low_r), Scalar(high_b,high_g,high_r),frame_threshold);
        //-- Show the frames
        imshow("Original",frame);
        imshow("Object Detection",frame_threshold);
    }

//Finding Contour
	thresh_callback( 0, 0 );
	waitKey(0);

    return 0;
}


void on_low_r_thresh_trackbar(int, void *)
{
    low_r = min(high_r-1, low_r);
    setTrackbarPos("Low R","Object Detection", low_r);
}
void on_high_r_thresh_trackbar(int, void *)
{
    high_r = max(high_r, low_r+1);
    setTrackbarPos("High R", "Object Detection", high_r);
}
void on_low_g_thresh_trackbar(int, void *)
{
    low_g = min(high_g-1, low_g);
    setTrackbarPos("Low G","Object Detection", low_g);
}
void on_high_g_thresh_trackbar(int, void *)
{
    high_g = max(high_g, low_g+1);
    setTrackbarPos("High G", "Object Detection", high_g);
}
void on_low_b_thresh_trackbar(int, void *)
{
    low_b= min(high_b-1, low_b);
    setTrackbarPos("Low B","Object Detection", low_b);
}
void on_high_b_thresh_trackbar(int, void *)
{
    high_b = max(high_b, low_b+1);
    setTrackbarPos("High B", "Object Detection", high_b);
}

//Function to find the contours using Canny
void thresh_callback(int, void* )
{
  Mat canny_output;
  vector<vector<Point> > contours;
  vector<Vec4i> hierarchy;

  /// Detect edges using canny
	Canny( frame_threshold, canny_output, thresh, thresh*2, 3 );


	/*
	////Find contours
	void findContours(InputOutputArray image, OutputArrayOfArrays contours, OutputArray hierarchy, int mode, int method, Point offset=Point())
	*/
	findContours( canny_output, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
	//findContours( canny_output, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

/*
////Find Largest Contour
*/

int largest_area=0;
int largest_contour_index=0;
Rect bounding_rect;

for( int i = 0; i< contours.size(); i++ ) // iterate through each contour. 
{
       double a=contourArea( contours[i],false);  //  Find the area of contour
       if(a>largest_area)
		{
       largest_area=a;
       largest_contour_index=i;                //Store the index of largest contour
       bounding_rect=boundingRect(contours[i]); // Find the bounding rectangle for biggest contour
		}
	}
	
	Scalar color( 255,255,255);

	/*
	////Draw contours
	void drawContours(InputOutputArray image, InputArrayOfArrays contours, int contourIdx, const Scalar& color, int thickness=1, int lineType=8, InputArray hierarchy=noArray(), int maxLevel=INT_MAX, Point offset=Point() )
	*/

  Mat drawing = Mat::zeros( canny_output.size(), CV_8UC3 );
  //for( int i = 0; i< contours.size(); i++ )
     {
       //Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
       //drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
	drawContours( drawing, contours,largest_contour_index, color, CV_FILLED, 8, hierarchy ); // Draw the largest contour using previously stored index.
 rectangle(drawing, bounding_rect,  Scalar(0,255,0),1, 8,0);  
     }

  /// Show in a window
  namedWindow( "Contours", WINDOW_NORMAL );
  imshow( "Contours", drawing );
}
