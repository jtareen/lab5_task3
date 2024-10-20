# Lab 5 Task 3 - Hero Animation with Flutter

This project is a solution for **Task 3** of **Lab 5**, which demonstrates how to implement a **Hero Animation** for smooth screen transitions in a Flutter app. The app features a list of users, and when a user taps on an item in the list, it navigates to a profile page with a transition effect on the user's profile image.

## Task Description

**Objective**: 
Create two screens where an image smoothly transitions between the screens using the **Hero** widget. Implement a button on the first screen to navigate to the second screen.

### Requirements:
1. **Two screens** with an image that transitions between them using the **Hero** widget.
2. **Navigation** between the screens using `Navigator.push`.

---

## Project Structure

```
assets
|___ data/              # Contains a JSON file with user data
|___ images/            # Contains profile images of users

lib
|___ model/
|     |___ user_class.dart         # User model class for handling user data
|
|___ screen/
|     |___ home_screen.dart        # Home screen with a list of users and Hero widget
|     |___ profile_screen.dart     # User profile screen with Hero widget
|
|___ widgets/
|     |___ buttons.dart            # Contains UI elements like buttons
|     |___ user_list_item.dart     # Widget for rendering each user in the list
|
|___ services/
|     |___ fetch_service.dart      # Handles data fetching from JSON file asynchronously
|
|___ main.dart                     # Entry point of the app
```

---

## Features

- **Hero Animation**: The user's profile picture on the list transitions smoothly to the profile screen using the **Hero** widget.
- **Asynchronous Data Loading**: User data is stored in a JSON file located in the `assets/data` directory and loaded asynchronously when the app starts.
- **Profile Navigation**: Tapping on any user in the list navigates to the profile page with a seamless animation.
  
---

## Getting Started

### Prerequisites

- Flutter SDK
- Android/iOS emulator or a physical device for testing

### Setup Instructions

1. Clone the repository:
    ```bash
    git clone https://github.com/jtareen/lab5_task3.git
    ```
2. Navigate to the project directory:
    ```bash
    cd lab5_task3
    ```
3. Fetch the dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
    flutter run
    ```

### Assets

- The **JSON data** with user details is located in the `assets/data` directory.
- User **profile images** are stored in the `assets/images` directory.
- The data used in the app is **sample data** generated by AI, including Images which are **AI generated** too.

---

## Credits

This project was developed as part of a lab task for **Lab 5, Task 3** in Mobile App development (with Flutter) course of my BSCS degree.