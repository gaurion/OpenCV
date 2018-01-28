#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>
#include <string>
using namespace cv;
using namespace std;
int main( int argc, char** argv )
{
    Mat image;
	Mat convert;
    image = imread("test.jpg"); // Read the file
	image.convertTo(convert,CV_32F);
    namedWindow( "Display window", WINDOW_NORMAL ); 
	namedWindow( "converted", WINDOW_NORMAL ); 
    imshow( "Display window", image ); 
	imshow( "converted", convert );               
    waitKey(0); // Wait for a keystroke in the window
    return 0;
}
