
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
using namespace cv;
int main ( int, char** argv )
{
  Mat src, dst;
  Mat kernel;
  Point anchor;
  double delta;
  int ddepth;
  int kernel_size;
  const char* window_name = "filter2D Demo";
  int c;
	namedWindow(window_name,WINDOW_NORMAL);
  src = imread( "test.jpg", IMREAD_COLOR ); // Load an image
  if( src.empty() )
    { return -1; }
  anchor = Point( -1, -1 );
  delta = 0;
  ddepth = -1;
  int ind = 0;
  for(;;)
       {
         c = waitKey(500);
         if( (char)c == 27 )
           { break; }
         kernel_size = 3 + 2*( ind%5 );
         kernel = Mat::ones( kernel_size, kernel_size, CV_32F )/ (float)(kernel_size*kernel_size);
         filter2D(src, dst, ddepth , kernel, anchor, delta, BORDER_DEFAULT );
         imshow( window_name, dst );
         ind++;
       }
  return 0;
}
