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
    image = imread("test.jpg", IMREAD_COLOR ); // Read the file
    namedWindow( "Display window", WINDOW_NORMAL ); 
    imshow( "Display window", image );                
    waitKey(0); // Wait for a keystroke in the window
    return 0;
}
