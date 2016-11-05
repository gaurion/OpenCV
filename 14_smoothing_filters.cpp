#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include<iostream>
using namespace std;
using namespace cv;

int DELAY_CAPTION = 1500;
int DELAY_BLUR = 100;
int MAX_KERNEL_LENGTH = 31;

Mat src;
Mat bl,g,m,bi;

int display_caption( const char* caption );
int display_dst( int delay );

int main( void )
{
do{
	int i;
cout<<"MAX VALUE FOR i =31";
cout<<"ENTER A VALUE FOR i:";
cin>>i;
	namedWindow("ORIGINAL", WINDOW_NORMAL );
	namedWindow("GAUSSIAN", WINDOW_NORMAL );
	namedWindow("MEDIAN", WINDOW_NORMAL );
	namedWindow("BLUR", WINDOW_NORMAL );
	namedWindow("MEDIAN", WINDOW_NORMAL );
	namedWindow("BILATERAL", WINDOW_NORMAL );
	src = imread( "test.jpg", IMREAD_COLOR );
	imshow( "ORIGINAL", src );

	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	blur( src, bl, Size( i, i ), Point(-1,-1) );
	imshow( "BLUR", bl );
	
	//waitKey(100);
	}

	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	GaussianBlur( src, g, Size( i, i ), 0, 0 );
	imshow( "GAUSSIAN", g );
	
	//waitKey(100);
	}

	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	medianBlur ( src, m, i );
	imshow( "MEDIAN", m );
	
	//waitKey(100);
	}
	
	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	bilateralFilter ( src, bi, i, i*2, i/2 );
	imshow( "BILATERAL", bi );
	
	//waitKey(100);
	}
  std::cout<<"ENTER ANY KEY:";
}while(waitKey(0));
  return 0;
}
