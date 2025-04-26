#include <iostream>
#include <cstdlib> // for system()

void showMenu() {
    std::cout << "=== Bernard's C++ OpenCV Toolkit Launcher ===\n";
    std::cout << "1. Run Project 1 (Color Detection)\n";
    std::cout << "2. Run Project 2 (Face Detection)\n";
    std::cout << "3. Run Project 3 (Object Tracking)\n";
    std::cout << "0. Exit\n";
    std::cout << "Select an option: ";
}

int main() {
    int choice = -1;
    while (choice != 0) {
        showMenu();
        std::cin >> choice;

        switch (choice) {
            case 1:
                system("install\\bin\\Project1.exe");
                break;
            case 2:
                system("install\\bin\\Project2.exe");
                break;
            case 3:
                system("install\\bin\\Project3.exe");
                break;
            case 0:
                std::cout << "Exiting launcher.\n";
                break;
            default:
                std::cout << "Invalid selection. Try again.\n";
                break;
        }
    }
    return 0;
}
