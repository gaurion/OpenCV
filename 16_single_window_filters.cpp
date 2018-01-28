#include <opencv2/imgproc.hpp>
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include<iostream>
#include <opencv2/imgproc/imgproc.hpp>  
#include <opencv2/core/core.hpp>

using namespace std;
using namespace cv;

int MAX_KERNEL_LENGTH = 31;

Mat src;
Mat bl,g,m,bi;	//Matrices for filters
//Mat dst;

int main( void )
{
do{
	int i;
	cout<<"Enter Value for i [1-31(odd values only)]";
	cin>>i;
	
	/*
	namedWindow("ORIGINAL", WINDOW_NORMAL );
	namedWindow("GAUSSIAN", WINDOW_NORMAL );
	namedWindow("MEDIAN", WINDOW_NORMAL );
	namedWindow("BLUR", WINDOW_NORMAL );
	namedWindow("MEDIAN", WINDOW_NORMAL );
	namedWindow("BILATERAL", WINDOW_NORMAL );
	*/

	src = imread( "test.jpg", IMREAD_COLOR );
	//imshow( "ORIGINAL", src );
	imwrite("original.jpg", src);

	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	blur( src, bl, Size( i, i ), Point(-1,-1) );
	//Text on Image
	string text="blur";
	Point textOrg(10,130);
	putText(bl,text,textOrg,CV_FONT_HERSHEY_SIMPLEX,2,Scalar::all(255),3,8);
	//imshow( "BLUR", bl );
	imwrite("blur.jpg", bl);
	//waitKey(100);
	}

	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	GaussianBlur( src, g, Size( i, i ), 0, 0 );
	//Text on Image
	string text="gaussian";
	Point textOrg(10,130);
	putText(g,text,textOrg,CV_FONT_HERSHEY_SIMPLEX,2,Scalar::all(255),3,8);
	//imshow( "GAUSSIAN", g );
	imwrite("gaussian.jpg", g);
	//waitKey(100);
	}

	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	medianBlur ( src, m, i );
	//Text on Image
	string text="median";
	Point textOrg(10,130);
	putText(m,text,textOrg,CV_FONT_HERSHEY_SIMPLEX,2,Scalar::all(255),3,8);
	//imshow( "MEDIAN", m );
	imwrite("median.jpg", m);
	//waitKey(100);
	}
	
	//for ( int i = 1; i < MAX_KERNEL_LENGTH; i = i + 2 )
	{
	bilateralFilter ( src, bi, i, i*2, i/2 );
	//Text on Image
	string text="bilateral";
	Point textOrg(10,130);
	putText(bi,text,textOrg,CV_FONT_HERSHEY_SIMPLEX,2,Scalar::all(255),3,8);
	//imshow( "BILATERAL", bi );
	imwrite("bilateral.jpg", bi);
	//waitKey(100);
	}




//Code for single window

	//Image Reading
	IplImage* img1 = cvLoadImage( "original.jpg" );
	IplImage* img2 = cvLoadImage( "blur.jpg" );
	IplImage* img3 = cvLoadImage( "gaussian.jpg" );
	IplImage* img4 = cvLoadImage( "median.jpg" );
	IplImage* img5 = cvLoadImage( "bilateral.jpg" );

	int dstWidth=img1->width+img1->width;
	int dstHeight=img1->height+img1->height;

	IplImage* dst=cvCreateImage(cvSize(dstWidth,dstHeight),IPL_DEPTH_8U,3); 

	cvSetImageROI(dst, cvRect(0, 0,img1->width,img1->height) );
	cvCopy(img1,dst,NULL);
	cvResetImageROI(dst);

	cvSetImageROI(dst, cvRect(img2->width, 0,img2->width,img2->height) );
	cvCopy(img2,dst,NULL);
	cvResetImageROI(dst);

	cvSetImageROI(dst, cvRect(0, img3->height,img3->width,img3->height) );
	cvCopy(img3,dst,NULL);
	cvResetImageROI(dst);

	cvSetImageROI(dst, cvRect(img4->width, img4->height,img4->width,img4->height) );
	cvCopy(img4,dst,NULL);
	cvResetImageROI(dst);

	//cvSetImageROI(dst, cvRect(0, img5->height+img5->height,img5->width,img5->height) );
	//cvCopy(img5,dst,NULL);
	//cvResetImageROI(dst);
	

	cvNamedWindow("DESTINATION",WINDOW_NORMAL);
	cvShowImage( "DESTINATION", dst);
	std::cout<<"ENTER ANY KEY:";

}while(waitKey(0));
	return 0;
}
