/*gaurion :P*/

#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include<iostream>

using namespace std;
using namespace cv;

Mat src;

int value=100;


//Operation to be performed on trackbar change
void operation(int,void*)
{
cout<<"Operation Successful"<<value<<endl;
}


int main( int, char** argv )
{
	int count=10;
	//Input of image into src matrix
	src = imread( "test.jpg", IMREAD_COLOR );

	//return failure if image not found
	if( src.empty() )
    { return -1; }

	//Name of the window
	namedWindow( "TrackBar Window", WINDOW_NORMAL );

	/*
	CreateTrackbar(trackbarName, windowName, value, count, onChange)

	-> count=number of intervals in between
	-> value=the variable in which the value of the trackbar is stored
	-> onChange=the function to be performed whenever there is a change in the trackbar

	*/
	createTrackbar( "Element:", "TrackBar Window",&value, count,operation );

	//operation(0,0);

	waitKey(0);
	return 0;
}

