#include "opencv2/imgproc.hpp"
<<<<<<< HEAD
//#include "opencv2/imgcodecs.hpp"
=======
#include "opencv2/imgcodecs.hpp"
>>>>>>> c959186273f830fd452c6e6f6310caa3a93dd8a8
#include "opencv2/highgui.hpp"
#include<iostream>

using namespace std;
using namespace cv;
int threshold_value = 0;
int threshold_type = 3;
int const max_value = 255;
int const max_type = 4;
int const max_BINARY_value = 255;
Mat src, src_gray, dst;
const char* window_name = "Threshold Demo";
const char* trackbar_type = "Type: \n 0: Binary \n 1: Binary Inverted \n 2: Truncate \n 3: To Zero \n 4: To Zero Inverted";
const char* trackbar_value = "Value";
void Threshold_Demo( int, void* );
int main( int, char** argv )
{
	cout<<"TYPE : 0: Binary 1: Binary Inverted 2: Truncate 3: To Zero 4: To Zero Inverted"<<endl;
<<<<<<< HEAD
  src = imread( "f1.jpg", IMREAD_COLOR ); // Load an image
=======
  src = imread( "arena.png", IMREAD_COLOR ); // Load an image
>>>>>>> c959186273f830fd452c6e6f6310caa3a93dd8a8
  if( src.empty() )
    { return -1; }
  cvtColor( src, src_gray, COLOR_BGR2GRAY ); // Convert the image to Gray
  namedWindow( window_name, WINDOW_NORMAL ); // Create a window to display results
  createTrackbar( trackbar_type,
                  window_name, &threshold_type,
                  max_type, Threshold_Demo ); // Create Trackbar to choose type of Threshold
  createTrackbar( trackbar_value,
                  window_name, &threshold_value,
                  max_value, Threshold_Demo ); // Create Trackbar to choose Threshold value
  Threshold_Demo( 0, 0 ); // Call the function to initialize
  for(;;)
    {
      int c;
      c = waitKey( 20 );
      if( (char)c == 27 )
    { break; }
    }
}
void Threshold_Demo( int, void* )
{
  /* 0: Binary
     1: Binary Inverted
     2: Threshold Truncated
     3: Threshold to Zero
     4: Threshold to Zero Inverted
   */
  threshold( src_gray, dst, threshold_value, max_BINARY_value,threshold_type );
  imshow( window_name, dst );
}
