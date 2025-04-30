// === File: include/DisplayManager.hpp ===
#pragma once
#include <opencv2/opencv.hpp>
#include <string>

class DisplayManager {
public:
    void show(const std::string& windowName, const cv::Mat& image);
    void wait(int delayMs = 0);
};