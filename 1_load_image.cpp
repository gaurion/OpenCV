<<<<<<< HEAD
#include <opencv/core.hpp>
//#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>
#include <string>

=======
#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>
#include <string>
>>>>>>> c959186273f830fd452c6e6f6310caa3a93dd8a8
using namespace cv;
using namespace std;
int main( int argc, char** argv )
{
    Mat image;
<<<<<<< HEAD
    image = imread("f1.jpg", IMREAD_COLOR ); // Read the file
    namedWindow( "Display window", WINDOW_AUTOSIZE ); 
=======
    image = imread("test.jpg", IMREAD_COLOR ); // Read the file
    namedWindow( "Display window", WINDOW_NORMAL ); 
>>>>>>> c959186273f830fd452c6e6f6310caa3a93dd8a8
    imshow( "Display window", image );                
    waitKey(0); // Wait for a keystroke in the window
    return 0;
}
