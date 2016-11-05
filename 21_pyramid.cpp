#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
using namespace cv;
Mat src, dst, tmp;
const char* window_name = "Pyramids Demo";
int main( void )
{
	namedWindow(window_name,WINDOW_NORMAL);
	namedWindow("Original",WINDOW_NORMAL);
	printf( "\n Zoom In-Out demo  \n " );
	printf( "------------------ \n" );
  printf( " * [u] -> Zoom in  \n" );
  printf( " * [d] -> Zoom out \n" );
  printf( " * [ESC] -> Close program \n \n" );
  src = imread( "arena.png" ); // Loads the test image
	imshow("Original",src);
  if( src.empty() )
    { printf(" No data! -- Exiting the program \n");
      return -1; }
  tmp = src;
  dst = tmp;
  imshow( window_name, dst );
  for(;;)
  {
    int c;
    c = waitKey(0);
    if( (char)c == 27 )
      { break; }
    if( (char)c == 'u' )
      {
        pyrUp( tmp, dst, Size( tmp.cols*2, tmp.rows*2 ) );
        printf( "** Zoom In: Image x 2 \n" );
      }
    else if( (char)c == 'd' )
      {
        pyrDown( tmp, dst, Size( tmp.cols/2, tmp.rows/2 ) );
        printf( "** Zoom Out: Image / 2 \n" );
      }
	
    imshow( window_name, dst );
    tmp = dst;
   }
   return 0;
}
