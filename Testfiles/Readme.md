//Example Program to execute any ccp file using CMake - DisplayImage.cpp


        #include <stdio.h>
        #include <opencv2/opencv.hpp>

        using namespace cv;

        int main(int argc, char** argv )
        {
            if ( argc != 2 )
            {
                printf("usage: DisplayImage.out <Image_Path>\n");
                return -1;
            }

            Mat image;
            image = imread( argv[1], 1 );

            if ( !image.data )
            {
                printf("No image data \n");
                return -1;
            }
            namedWindow("Display Image", WINDOW_AUTOSIZE );
            imshow("Display Image", image);

            waitKey(0);

            return 0;
        }

CMakeLists.txt file

        cmake_minimum_required(VERSION 2.8)
        project( DisplayImage )
        find_package( OpenCV REQUIRED )
        add_executable( DisplayImage DisplayImage.cpp )
        target_link_libraries( DisplayImage ${OpenCV_LIBS} )

Execute on terminal

    cd <DisplayImage_directory>
    cmake .
    make

    ./DisplayImage lena.jpg
