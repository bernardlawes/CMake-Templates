// === File: src/DisplayManager.cpp ===
#include "DisplayManager.hpp"

void DisplayManager::show(const std::string& windowName, const cv::Mat& image) {
    cv::imshow(windowName, image);
}

void DisplayManager::wait(int delayMs) {
    cv::waitKey(delayMs);
}