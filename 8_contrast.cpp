#include <opencv2/opencv.hpp>
#include <iostream>
using namespace cv;
double alpha; /*< Simple contrast control */
int beta;  /*< Simple brightness control */
int main( int argc, char** argv )
{
    Mat image = imread("test.jpg");
    Mat new_image = Mat::zeros( image.size(), image.type() );
    std::cout<<" Basic Linear Transforms "<<std::endl;
    std::cout<<"-------------------------"<<std::endl;
    std::cout<<"* Enter the contrast value [1.0-3.0]: ";std::cin>>alpha;
    std::cout<<"* Enter the brightness value [0-100]: "; std::cin>>beta;
    for( int y = 0; y < image.rows; y++ ) {
        for( int x = 0; x < image.cols; x++ ) {
            for( int c = 0; c < 3; c++ ) {
                new_image.at<Vec3b>(y,x)[c] =
                saturate_cast<uchar>( alpha*( image.at<Vec3b>(y,x)[c] ) + beta );
            }
        }
    }
    namedWindow("Original Image", WINDOW_NORMAL);
    namedWindow("New Image", WINDOW_NORMAL);
    imshow("Original Image", image);
    imshow("New Image", new_image);
    waitKey();
    return 0;
}
