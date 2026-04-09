# LMS App - Mobile UI Design

A modern and responsive Learning Management System (LMS) mobile application built with Flutter. This project was developed as part of a structured **7-day Onboarding task**, focusing on clean UI/UX, local state management, and responsive layouts.

## 🚀 Project Overview
This application provides a complete user interface for an educational platform. It features a seamless flow from onboarding and authentication to course discovery and interactive lesson progress tracking.

## ✨ Key Features
*   **Onboarding & Auth:** Multi-page intro screens and a Login system with full Form validation.
*   **Dynamic Dashboard:** A professional home screen featuring a Quick Stats Summary and quick navigations.
*   **Course Management:** A structured flow from Course Listing to detailed Lesson views with instructor information.
*   **Interactive Lesson Player:** Features a "Mark as Completed" system using `setState` and `AnimatedContainer` for smooth visual feedback.
*   **Responsive UI:** Fully optimized for different screen sizes (phones and tablets) using `MediaQuery`.
*   **Modern Design:** Uses Material 3 principles, custom gradients, polished card-based layouts, and clean typography.

## 🛠️ Technical Stack
*   **Framework:** Flutter
*   **Language:** Dart
*   **State Management:** Local State (`setState`)
*   **UI Logic:** Responsive Design (`MediaQuery`)
*   **Animations:** Implicit Animations (`AnimatedContainer`, `AnimatedOpacity`)
*   **Navigation:** Bottom Navigation Bar with state preservation using `IndexedStack`.

## 📂 Project Structure
```text
lib/
├── models/          # Data models for Courses and Assignments
├── screens/         # Main UI Screens
│   ├── splash_screen.dart
│   ├── onboarding_screen.dart
│   ├── login_screen.dart
│   ├── main_screen.dart        # Navigation Hub
│   ├── home_screen.dart        # Dashboard
│   ├── course_list_screen.dart
│   ├── course_details_screen.dart
│   ├── lesson_player_screen.dart
│   ├── assignment_screen.dart
│   └── profile_screen.dart
└── main.dart        # App Entry Point
```

## 📈 7-Day Development Roadmap

*   **Day 1-2:** Environment setup, Git standards, Splash Screen, and Onboarding flow.
*   **Day 3:** Login Screen with Form validation and Regex.
*   **Day 4:** Main Screen with Bottom Navigation implementation.
*   **Day 5:** Course List and Course Details screens with Models.
*   **Day 6:** Lesson Player, State Management, and smooth Animations.
*   **Day 7:** Responsive Design implementation, UI/UX Polish, and Documentation.

## ⚙️ Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/lms_app.git
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the application:**
   ```bash
   flutter run
   ```


   
