#include <opencv2/imgproc/imgproc.hpp>  
#include <opencv2/core/core.hpp>        
#include <opencv2/highgui/highgui.hpp>
#include <iostream>


using namespace cv;
using namespace std;

int main()
{
//Image Reading
IplImage* img1 = cvLoadImage( "test.jpg" );
IplImage* img2 = cvLoadImage( "test.jpg" );
IplImage* img3 = cvLoadImage( "test.jpg" );
IplImage* img4 = cvLoadImage( "test.jpg" );

int dstWidth=img1->width+img1->width;
int dstHeight=img1->height+img1->height;

IplImage* dst=cvCreateImage(cvSize(dstWidth,dstHeight),IPL_DEPTH_8U,3); 

// Copy first image to dst
cvSetImageROI(dst, cvRect(0, 0,img1->width,img1->height) );
cvCopy(img1,dst,NULL);
cvResetImageROI(dst);

// Copy second image to dst
cvSetImageROI(dst, cvRect(img2->width, 0,img2->width,img2->height) );
cvCopy(img2,dst,NULL);
cvResetImageROI(dst);

// Copy third image to dst
cvSetImageROI(dst, cvRect(0, img3->height,img3->width,img3->height) );
cvCopy(img3,dst,NULL);
cvResetImageROI(dst);

// Copy fourth image to dst
cvSetImageROI(dst, cvRect(img4->width, img4->height,img4->width,img4->height) );
cvCopy(img4,dst,NULL);
cvResetImageROI(dst);

//show all in a single window
cvNamedWindow( "Example1", WINDOW_NORMAL );
cvShowImage( "Example1", dst );
cvWaitKey(0);

}
