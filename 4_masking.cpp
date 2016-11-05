#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>

using namespace std;
using namespace cv;

void Sharpen(const Mat& myImage,Mat& Result);

int main( int argc, char* argv[])
{

	Mat src,dst0,dst1;

        src = imread( "test.jpg", IMREAD_COLOR);

    namedWindow("Input", WINDOW_NORMAL);
    namedWindow("Output", WINDOW_NORMAL);

    imshow( "Input", src );

    Sharpen( src, dst0 );

    imshow( "Output", dst0 );
    waitKey();

    Mat kernel = (Mat_<char>(3,3) <<  0, -1,  0,
                                   -1,  5, -1,
                                    0, -1,  0);

    filter2D( src, dst1, src.depth(), kernel );

    imshow( "Output", dst1 );

    waitKey();
    return 0;
}
void Sharpen(const Mat& myImage,Mat& Result)
{
    CV_Assert(myImage.depth() == CV_8U);  // accept only uchar images

    const int nChannels = myImage.channels();
    Result.create(myImage.size(),myImage.type());

    for(int j = 1 ; j < myImage.rows-1; ++j)
    {
        const uchar* previous = myImage.ptr<uchar>(j - 1);
        const uchar* current  = myImage.ptr<uchar>(j    );
        const uchar* next     = myImage.ptr<uchar>(j + 1);

        uchar* output = Result.ptr<uchar>(j);

        for(int i= nChannels;i < nChannels*(myImage.cols-1); ++i)
        {
            *output++ = saturate_cast<uchar>(5*current[i]
                         -current[i-nChannels] - current[i+nChannels] - previous[i] - next[i]);
        }
    }

    Result.row(0).setTo(Scalar(0));
    Result.row(Result.rows-1).setTo(Scalar(0));
    Result.col(0).setTo(Scalar(0));
    Result.col(Result.cols-1).setTo(Scalar(0));
}
