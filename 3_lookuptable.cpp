#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>
#include <string>
using namespace cv;
using namespace std;
int main( int argc, char** argv )
{
    String imageName( "test.jpg" ); // by default
    if( argc > 1)
    {
        imageName = argv[1];
    }
    Mat image;
	Mat output;
    image = imread( imageName, IMREAD_COLOR ); // Read the file



	Mat lookUpTable(1, 256, CV_8U);		//MATRIX FOR LOOKUP
	uchar* p = lookUpTable.ptr();
	for( int i = 0; i < 256; ++i)
		p[i] = p[i]-100;

	LUT(image, lookUpTable, output);	//LOOK UP TABLE




    if( image.empty() )                      // Check for invalid input
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }
    namedWindow( "Display window", WINDOW_NORMAL ); // Create a window for display.
    imshow( "Display window", image );                // Show our image inside it.
	 namedWindow( "OUTPUT", WINDOW_NORMAL );
	imshow("OUTPUT",output);
    waitKey(0); // Wait for a keystroke in the window
    return 0;
}
