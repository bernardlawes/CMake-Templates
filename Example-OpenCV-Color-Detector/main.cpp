// === File: main.cpp ===
#include "ImageLoader.hpp"
#include "ColorDetector.hpp"
#include "DisplayManager.hpp"

int main(int argc, char** argv) {
    if (argc < 2) {
        std::cerr << "Usage: ./MyOCV_ColorDetector <image_path>\n";
        return 1;
    }

    std::string imagePath = argv[1];
    ImageLoader loader;
    cv::Mat image = loader.load(imagePath);

    if (image.empty()) return 1;

    // Define HSV range for red color
    ColorDetector redDetector(cv::Scalar(0, 100, 100), cv::Scalar(10, 255, 255));
    cv::Mat mask = redDetector.detect(image);

    DisplayManager display;
    display.show("Original", image);
    display.show("Red Mask", mask);
    display.wait();

    return 0;
}