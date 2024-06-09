Sure! Here is the updated README file with a section to download the APK file.

---

# Opensaucerer Assessment for Mobile Developer Role at Opensaucerer

lib/
├── core/
│   ├── const/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── bottomNav/
│   ├── course_details_screen.dart
│   └── schedule_screen.dart
└── main.dart


## Overview

This is a Flutter project designed with a clean and modular structure. The project aims to provide a seamless user experience with the integration of various Flutter packages for enhanced functionality.

## Project Structure
Based on the project structure you provided, here's an explanation of the typical organization and purpose of each directory and file in a Flutter project:

### Project Structure Explanation

#### lib
The `lib` directory is the main directory for Dart files in a Flutter project. This is where the core application code resides.

1. **core**
    - **const**
      - This directory typically contains constants used throughout the application. These constants might include strings, API endpoints, theme-related values, etc.
    - **utils**
      - Utility functions and helper classes that are used across different parts of the application can be found here. These might include functions for date formatting, network requests, or other reusable logic.
    - **widgets**
      - This directory is for custom widgets that are used across the application. These are typically small, reusable UI components that can be shared among different screens or features.

2. **features**
    - This directory is organized by the features of the application. Each feature typically has its own subdirectory containing related widgets, screens, and logic.
    - **bottomNav**
      - This subdirectory likely contains code related to the bottom navigation bar of the application. This might include the main navigation widget, as well as any related classes or components.
    - **course_details_screen.dart**
      - This Dart file probably contains the screen/widget for displaying details about a specific course. It includes the UI and logic for showing course information.
    - **schedule_screen.dart**
      - This Dart file likely contains the screen/widget for displaying a schedule. It includes the UI and logic for showing a list or calendar of scheduled events or classes.

3. **main.dart**
    - This is the entry point of the Flutter application. It contains the `main` function and sets up the initial state of the app, including the home screen and any necessary initializations.



### Summary

- The `lib` directory is the main source directory for your Flutter application.
- The `core` directory contains constant values, utility functions, and shared widgets.
- The `features` directory is organized by application features, with each feature having its own subdirectory.
- The `main.dart` file is the entry point of the application, where the main widget tree is built and the initial screen is set.

This structure helps keep your code organized, modular, and maintainable, especially as your application grows in complexity.

## Demo Video
You can view the application online and also interact with it by clicking the link below:

[Live app demo](https://vimeo.com/955618612)

## Download APK

You can download the latest release of the application from the link below:

[Download app-release.apk](https://drive.google.com/file/d/1Hk2NUxII3MQV46jx0lnl3Iow85hujMAK/view?usp=sharing)

## Packages Used



## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. Clone the repository:

```bash
git clone https://github.com/Dsoji/saucerer_assesment.git
```

2. Navigate to the project directory:

```bash
cd your-repository
```

3. Install the dependencies:

```bash
flutter pub get
```

### Running the Project

1. Ensure a device is connected or an emulator is running.
2. Run the project:

```bash
flutter run
```


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

