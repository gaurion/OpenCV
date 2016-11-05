#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include <iostream>
using namespace cv;
int main( void )
{
   double alpha = 0.5; double beta; double input;
   Mat src1, src2, dst;
   std::cout<<" Simple Linear Blender "<<std::endl;
   std::cout<<"-----------------------"<<std::endl;
   // We use the alpha provided by the user if it is between 0 and 1
   src1 = imread("tested.png");
   src2 = imread("tested1.png");
   if( src1.empty() ) { std::cout<< "Error loading src1"<<std::endl; return -1; }
   if( src2.empty() ) { std::cout<< "Error loading src2"<<std::endl; return -1; }
   beta = ( 1.0 - alpha );
   addWeighted( src1, alpha, src2, beta, 0.0, dst);
namedWindow("Linear Blend",WINDOW_NORMAL);
   imshow( "Linear Blend", dst );
   waitKey(0);
   return 0;
}
